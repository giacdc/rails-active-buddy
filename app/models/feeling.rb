class Feeling < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  belongs_to :booked_events, through: :bookings, source: :events
end
