class Feeling < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :feeling, :comment, presence: true
end
