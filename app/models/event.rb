class Event < ApplicationRecord
  belongs_to :event_creator, class_name: "User", foreign_key: :user_id
  belongs_to :sport
  has_one :sport_category, through: :sport
  has_one :chatroom
  has_many :bookings
  has_many :booked_users, through: :bookings, source: :users
end
