class Sport < ApplicationRecord
  belongs_to :sport_category
  has_many :events
  validates :name, :is_team_sport, presence: true
end
