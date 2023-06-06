class SportCategory < ApplicationRecord
  has_many :sports
  validates :name, presence: true
end
