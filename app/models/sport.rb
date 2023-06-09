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

  ICON_CLASS = {
    'Kite Surf': "fa-water",
    'Yoga': "fa-spa",
    'Volley-Ball': "fa-volleyball",
    'Ping-Pong': "fa-table-tennis-paddle-ball",
    'Trail': "fa-person-running",
    'Archery': "fa-bullseye",
    'Salsa': "fa-guitar"
  }
end
