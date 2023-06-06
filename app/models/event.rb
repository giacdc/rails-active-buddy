class Event < ApplicationRecord
  belongs_to :event_creator, class_name: "User", foreign_key: :user_id
  belongs_to :sport
  # has_one :sport_category, through: :sport
  # has_one :chatroom, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :booked_users, through: :bookings, source: :users

  validates :title, :description, :sport_id, :start_date, :end_date, :max_participants, :address
  validates :title, length: { minimum: 5 }
  validates :description, length: { minimum: 15 }
  validates :start_date, date: { greater_than_or_equal_to: Date.today }
  validates :end_date, date: { greater_than: :start_date }
  validates :cost, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
