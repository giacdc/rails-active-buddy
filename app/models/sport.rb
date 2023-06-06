class Sport < ApplicationRecord
  belongs_to :sport_category
  has_many :events
end
