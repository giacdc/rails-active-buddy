class Event < ApplicationRecord
  belongs_to :event_creator, class_name: "User", foreign_key: :user_id
  belongs_to :sport
  # has_one :sport_category, through: :sport
  has_one :chatroom, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booked_users, through: :bookings, source: :user

  validates_presence_of :title, :description, :sport_id, :start_date, :end_date, :max_participants, :address
  validates :title, length: { minimum: 5, maximum: 35 }
  validates :description, length: { minimum: 15 }
  validates :start_date, comparison: { greater_than_or_equal_to: Date.today }
  validates :end_date, comparison: { greater_than: :start_date }
  validates :cost, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch::Model
  pg_search_scope :search_event_sport, against: %i[title description address],
  associated_against: {
    sport: [:name]
    },
  using: {
    tsearch: { prefix: true }
  }

  def self.sort_by_upcoming_dates
    Event.all.order(start_date: :asc).select do |event|
      event.start_date > DateTime.now + 1
    end
  end

  def self.sort_by_later_today
    Event.all.order(start_date: :asc).select do |event|
      event.start_date > DateTime.now && event.start_date < DateTime.tomorrow + 10.hours
    end
  end
end
