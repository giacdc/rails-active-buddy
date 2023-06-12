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
    'Jacob': "jacob.jpg",
    'Sarah': "sarah.jpg",
    'Leo': "leo.jpg",
    'Louisa': "louisa.jpg",
    'Africa': "africa.jpg",
    'Benny': "Benny.jpg",
    'Emmanuelle': "Emmanuelle.jpg",
    'John': "John.jpg",
    'Juana': "juana.jpg",
    'Karen': "karen.jpg",
    'Maria': "maria.jpg",
    'Mike': "Mike.jpg",
    'Pedro': "pedro.jpg",
    'Peter': "peter.jpg",
    'Frank': "frank.jpg",
    'Berta': "berta.jpg"
  }
end
