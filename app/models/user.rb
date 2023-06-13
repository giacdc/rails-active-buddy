class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :chatrooms
  has_many :messages
  has_many :preferred_sports
  has_many :feelings
  has_many :bookings
  has_many :events
  has_many :booked_events, through: :bookings, source: :events

  validates :username, uniqueness: true

  IMAGES = {
    'Leo': "leo.jpg",
    'Sarah': "sarah.jpg",
    'Jacob': "jacob.jpg",
    'Louisa': "louisa.jpg",
    'Africa': "africa.jpg",
    'Benny': "benny.jpg",
    'Emmanuelle': "emmanuelle.jpg",
    'John': "john.jpg",
    'Juana': "juana.jpg",
    'Karen': "karen.jpg",
    'Maria': "maria.jpg",
    'Mike': "mike.jpg",
    'Pedro': "pedro.jpg",
    'Peter': "peter.jpg",
    'Frank': "frank.jpg",
    'Berta': "berta.jpg"
  }

  def age
    ((Time.zone.now - date_of_birth.to_time) / 1.year.seconds).floor
  end
end
