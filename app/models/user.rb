class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chatrooms
  has_many :messages
  has_many :preferred_sports
  has_many :feelings
  has_many :bookings
  has_many :events
  has_many :booked_events, through: :bookings, source: :event

  validates :username, uniqueness: true

  IMAGES = {
    'Jacob': "jacob.jpg",
    'Sarah': "sarah.jpg",
    'Leo': "leo.jpg",
    'Louisa': "louisa.jpg"
  }

  def age
    ((Time.zone.now - date_of_birth.to_time) / 1.year.seconds).floor
  end

  def current_month_events
    all_events = events + booked_events
    all_events.select do |event|
      event.start_date >= Date.today.beginning_of_month && event.start_date <= Date.today
    end
  end
end
