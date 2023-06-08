class Sport < ApplicationRecord
  belongs_to :sport_category
  has_many :events
  validates :name, presence: true
  validates :is_team_sport, inclusion: [true, false]

  IMAGES = {
    'Kite Surf': "kite-surf.jpg",
    'Yoga': "yoga.jpg",
    'Volley-Ball': "volley-ball.jpg",
    'Ping-Pong': "ping-pong.jpg",
    'Trail': "trail.jpg",
    'Archery': "archery.jpg",
    'Salsa': "salsa2.jpg"
  }
end
