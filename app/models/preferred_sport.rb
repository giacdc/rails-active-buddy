class PreferredSport < ApplicationRecord
  SKILL_LEVELS = %w[First-timer Beginner Intermediate Advanced Expert Pro]
  belongs_to :user
  belongs_to :sport
  validates :skill_level, presence: true
  validates :skill_level, inclusion: {
    in: SKILL_LEVELS,
    message: "%<value> is not a valid skill level"
  }, allow_nil: false
end
