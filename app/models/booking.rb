class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event
  has_many :feelings, dependent: :destroy
end
