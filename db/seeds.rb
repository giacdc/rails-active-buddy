# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Feeling.destroy_all
Booking.destroy_all
PreferredSport.destroy_all
Event.destroy_all
Sport.destroy_all
SportCategory.destroy_all
User.destroy_all

puts "Swept and cleansed!"

# 4 USER MODEL

puts "Creating users..."
puts ".........................."

jacob = User.create!(
  email: "jacob@gmail.com",
  password: "123456",
  username: "Jacob",
  date_of_birth: "1988-12-30",
  bio: "I am passionate about team sports since my first age and start teaching archery 2 years.",
  gender: "male"
)

sarah = User.create!(
  email: "sarah@gmail.com",
  password: "123456",
  username: "Sarah",
  date_of_birth: "1996-03-29",
  bio: "I love outdoor activities, I've been running for almost 5 years and I've already taken part in 2 marathons
  competitions.",
  gender: "female"
)

leo = User.create!(
  email: "leo@gmail.com",
  password: "123456",
  username: "Leo",
  date_of_birth: "2020-02-05",
  bio: "I am a adventurous nomad always willing to discover new indoor and board games activities!",
  gender: "male"
)

louisa = User.create!(
  email: "louisa@gmail.com",
  password: "123456",
  username: "Louisa",
  date_of_birth: "1989-01-10",
  bio: "I especially enjoy water sports and outdoor activities while meeting new people.
  I am in to join in any kite surf activity!",
  gender: "female"
)

puts "Users created!"

# 4 SPORTS CATEGORY

puts "Creating sports categories..."
puts ".........................."

adventuresport = SportCategory.create!(
  name: "Adventure Sport"
)

artisticsport = SportCategory.create!(
  name: "Artistic Sport"
)

watersport = SportCategory.create!(
  name: "Water Sport"
)

racketsport = SportCategory.create!(
  name: "Racket Sport"
)

puts "Sport Categories created!"


puts "Creating sports..."
puts ".........................."

# 7 SPORTS

kitesurf = Sport.create!(
  name: "Kite Surf",
  is_team_sport: true,
  sport_category: watersport
)

yoga = Sport.create!(
  name: "Yoga",
  is_team_sport: false,
  sport_category: artisticsport
)

volleyball = Sport.create!(
  name: "Volley-Ball",
  is_team_sport: true,
  sport_category: watersport
)

ping_pong = Sport.create!(
  name: "Ping-Pong",
  is_team_sport: false,
  sport_category: racketsport
)

trail = Sport.create!(
  name: "Trail",
  is_team_sport: false,
  sport_category: adventuresport
)

archery = Sport.create!(
  name: "Archery",
  is_team_sport: false,
  sport_category: adventuresport
)

salsa = Sport.create!(
  name: "Salsa",
  is_team_sport: false,
  sport_category: artisticsport
)

# 7 EVENTS

puts "Creating events..."
puts ".........................."

Event.create!(
  title: "Kite Surf Chill Session",
  description: "Feel the exhilarating breeze and embrace the thrill of the ocean
  as you embark on a mesmerizing kite surf chill session.",
  start_date: DateTime.new(2023,6,15,10,0,0),
  end_date: DateTime.new(2023,6,17,13,0,0),
  cost: 20,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: kitesurf,
  event_creator: louisa
).save(validate: false)

event_1 = Event.create!(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session.
  Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues
  of the rising sun. ",
  start_date: DateTime.new(2023,6,16,6,0,0),
  end_date: DateTime.new(2023,6,16,7,30,0),
  cost: 20,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Av. Canal Olímpic, 24 Castelldefels – Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: louisa
)

event_2 = Event.create!(
  title: "Discover the art of archery!",
  description: "Discover the art of concentration and control, as you hone your aim and find your inner archer.
  Experience the exhilarating rush of hitting the bullseye for the very first time, and let the joy of this ancient
  sport ignite a newfound passion within you.",
  start_date: DateTime.new(2023,7,10,13,0,0),
  end_date: DateTime.new(2023,7,10,15,0,0),
  cost: 5,
  max_participants: 30,
  latitude: "",
  longitude: "",
  address: "Carrer Bonastruc de Porta, 10, 17001 Girona",
  is_indoor: true,
  sport: archery,
  event_creator: jacob
)

event_3 = Event.create!(
  title: "Ping-pong at the park",
  description: "Engage in friendly competition, surrounded by the beauty of nature.
  Laugh, cheer, and enjoy the energetic atmosphere as you showcase your skills and
  create unforgettable moments with friends or fellow players.",
  start_date: DateTime.new(2023,7,12,16,30,0),
  end_date: DateTime.new(2023,7,12,18,0,0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Carrer d'Aragó, 2, 08015 Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: leo
)

event_4 = Event.create!(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy.
  Feel the rhythm of your synchronized strides as you explore new paths together.
  Encouragement fills the air, spurring you on to reach new heights.",
  start_date: DateTime.new(2023,7,12,7,30,0),
  end_date: DateTime.new(2023,7,12,12,30,0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Passeig de Picasso, 21, 08003 Barcelona",
  is_indoor: false,
  sport: trail,
  event_creator: sarah
)

event_5 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023,6,20,10,0,0),
  end_date: DateTime.new(2023,6,20,14,0,0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event_6 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport
   you to a realm of pure euphoria. With every step, you unleash your inner expression,
   releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: DateTime.new(2023,6,6,19,0,0),
  end_date: DateTime.new(2023,6,6,20,30,0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: true,
  sport: salsa,
  event_creator: sarah
).save(validate: false)

event_7 = Event.create!(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023,6,20,18,30,0),
  end_date: DateTime.new(2023,6,20,20,30,0),
  cost: 0,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event_8 = Event.create!(
  title: "Ping-pong at Le Wagon",
  description: "Engage in friendly competition, surrounded by laugh and cheer. Enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: DateTime.new(2023, 6, 17, 19, 30, 0),
  end_date: DateTime.new(2023, 6, 17, 21, 30, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer del Bruc, 149, Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: leo
)

# 3 PREFERRED SPORT PER USER

puts "Creating preferred sport per user..."
puts ".........................."

PreferredSport.create!(
  skill_level: "Beginner",
  user: leo,
  sport: ping_pong
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: leo,
  sport: volleyball
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: leo,
  sport: yoga
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: sarah,
  sport: kitesurf
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: sarah,
  sport: yoga
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: sarah,
  sport: volleyball
)

PreferredSport.create!(
  skill_level: "Beginner",
  user: jacob,
  sport: ping_pong
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: jacob,
  sport: archery
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: jacob,
  sport: volleyball
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: louisa,
  sport: volleyball
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: louisa,
  sport: kitesurf
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: louisa,
  sport: yoga
)

puts "Created Preferred Sports!"

# 4 BOOKING EVENTS

puts "Creating bookings..."
puts ".........................."

booking_1 = Booking.create!(
  user: leo,
  event: event_1,
  is_accepted: true
)

booking_2 = Booking.create!(
  user: jacob,
  event: event_2,
  is_accepted: true
)

booking_3 = Booking.create!(
  user: sarah,
  event: event_3,
  is_accepted: true
)

booking_4 = Booking.create!(
  user: louisa,
  event: event_3,
  is_accepted: false
)

booking_5 = Booking.create!(
  user: leo,
  event: event_1,
  is_accepted: true
)

booking_6 = Booking.create!(
  user: jacob,
  event: event_2,
  is_accepted: true
)

booking_7 = Booking.create!(
  user: sarah,
  event: event_3,
  is_accepted: true
)

booking_8 = Booking.create!(
  user: louisa,
  event: event_3,
  is_accepted: false
)

booking_9 = Booking.create!(
  user: leo,
  event: event_1,
  is_accepted: true
)

booking_10 = Booking.create!(
  user: jacob,
  event: event_2,
  is_accepted: true
)

booking_11 = Booking.create!(
  user: sarah,
  event: event_3,
  is_accepted: true
)

booking_12 = Booking.create!(
  user: louisa,
  event: event_3,
  is_accepted: false
)

booking_13 = Booking.create!(
  user: leo,
  event: event_1,
  is_accepted: true
)

booking_14 = Booking.create!(
  user: jacob,
  event: event_2,
  is_accepted: true
)

booking_15 = Booking.create!(
  user: sarah,
  event: event_3,
  is_accepted: true
)

booking_16 = Booking.create!(
  user: louisa,
  event: event_3,
  is_accepted: false
)

puts "Created Bookings!"

# 4 Feeling

Feeling.create!(
  user: jacob,
  booking: booking_2,
  feeling: 5,
  comment: "Such a nice experience! Amazing team-work!"
)

Feeling.create!(
  user: sarah,
  booking: booking_3,
  feeling: 4,
  comment: "Quick booking confirmation and lovely first time yoga by the beach!"
)

Feeling.create!(
  user: louisa,
  booking: booking_4,
  feeling: 4,
  comment: "Between yoga and meditation, very relaxing!"
)
