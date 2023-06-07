class Sport < ApplicationRecord
  belongs_to :sport_category
  has_many :events
  validates :name, presence: true
  validates :is_team_sport, inclusion: [true, false]
end
