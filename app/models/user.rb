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
  has_many :booked_events, through: :bookings, source: :event

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

  def current_month_events
    all_events.select do |event|
      event.start_date >= Date.today.beginning_of_month && event.start_date <= Date.today
    end
  end

  def current_month_hours_event
    sum = 0
    current_month_events.each do |current_month_event|
      sum += (current_month_event.end_date - current_month_event.start_date) / 3600
    end
    sum.to_i
  end

  def all_events
    events + booked_events
  end
end
