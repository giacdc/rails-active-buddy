# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts ""
puts "Cleaning database..."

Feeling.destroy_all
Booking.destroy_all
PreferredSport.destroy_all
Event.destroy_all
Sport.destroy_all
SportCategory.destroy_all
User.destroy_all

puts "Swept and cleansed!"
puts ""
puts ""

###################################
#                                 #
#                                 #
#              USERS              #
#                                 #
#                                 #
###################################

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
  date_of_birth: "1994-02-05",
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

benny = User.create!(
  email: "benny@gmail.com",
  password: "123456",
  username: "Benny",
  date_of_birth: "1985-12-30",
  bio: "I am passionate about team sports since my first age and start teaching archery 2 years.",
  gender: "male"
)

maria = User.create!(
  email: "maria@gmail.com",
  password: "123456",
  username: "Maria",
  date_of_birth: "1993-03-29",
  bio: "I love outdoor activities, I've been running for almost 5 years and I've already taken part in 2 marathons
  competitions.",
  gender: "female"
)

 mike = User.create!(
  email: "mike@gmail.com",
  password: "123456",
  username: "Mike",
  date_of_birth: "1990-02-05",
  bio: "I am a adventurous nomad always willing to discover new indoor and board games activities!",
  gender: "male"
)

emmanuelle = User.create!(
  email: "emmanuelle@gmail.com",
  password: "123456",
  username: "Emmanuelle",
  date_of_birth: "1981-01-10",
  bio: "I especially enjoy water sports and outdoor activities while meeting new people.
  I am in to join in any kite surf activity!",
  gender: "female"
)

john = User.create!(
  email: "john@gmail.com",
  password: "123456",
  username: "John",
  date_of_birth: "1978-12-30",
  bio: "I am passionate about team sports since my first age and start teaching archery 2 years.",
  gender: "male"
)

juana = User.create!(
  email: "juana@gmail.com",
  password: "123456",
  username: "Juana",
  date_of_birth: "1976-03-29",
  bio: "I love outdoor activities, I've been running for almost 5 years and I've already taken part in 2 marathons
  competitions.",
  gender: "female"
)

pedro = User.create!(
  email: "pedro@gmail.com",
  password: "123456",
  username: "Pedro",
  date_of_birth: "1974-02-05",
  bio: "I am a adventurous nomad always willing to discover new indoor and board games activities!",
  gender: "male"
)

karen = User.create!(
  email: "karen@gmail.com",
  password: "123456",
  username: "Karen",
  date_of_birth: "1979-01-10",
  bio: "I especially enjoy water sports and outdoor activities while meeting new people.
  I am in to join in any kite surf activity!",
  gender: "female"
)

frank = User.create!(
  email: "frank@gmail.com",
  password: "123456",
  username: "Frank",
  date_of_birth: "1975-12-30",
  bio: "I am passionate about team sports since my first age and start teaching archery 2 years.",
  gender: "male"
)

berta = User.create!(
  email: "berta@gmail.com",
  password: "123456",
  username: "Berta",
  date_of_birth: "1983-03-29",
  bio: "I love outdoor activities, I've been running for almost 5 years and I've already taken part in 2 marathons
  competitions.",
  gender: "female"
)

 peter = User.create!(
  email: "peter@gmail.com",
  password: "123456",
  username: "Peter",
  date_of_birth: "1980-02-05",
  bio: "I am a adventurous nomad always willing to discover new indoor and board games activities!",
  gender: "male"
)

africa = User.create!(
  email: "africa@gmail.com",
  password: "123456",
  username: "Africa",
  date_of_birth: "1986-01-10",
  bio: "I especially enjoy water sports and outdoor activities while meeting new people.
  I am in to join in any kite surf activity!",
  gender: "female"
)

puts "#{User.all.size} users created!"
puts ""
puts ""

###################################
#                                 #
#                                 #
#         SPORTS CATEGORIES       #
#                                 #
#                                 #
###################################

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

puts "#{SportCategory.all.size} sport categories created!"
puts ""
puts ""

###################################
#                                 #
#                                 #
#             SPORTS              #
#                                 #
#                                 #
###################################

puts "Creating sports..."
puts ".........................."

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

puts "#{Sport.all.size} sports created!"
puts ""
puts ""

###################################
#                                 #
#                                 #
#             EVENTS              #
#                                 #
#                                 #
###################################

###################################
#          PAST EVENTS            #
###################################

puts "Creating events..."
puts ".........................."

event1 = Event.new(
  title: "Kite Surf Chill Session",
  description: "Feel the exhilarating breeze and embrace the thrill of the ocean
  as you embark on a mesmerizing kite surf chill session.",
  start_date: DateTime.new(DateTime::now.year, 6, 15, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 17, 13, 0, 0),
  cost: 20,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: kitesurf,
  event_creator: louisa
)

event1.save(validate: false)

event2 = Event.new(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session.
  Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues
  of the rising sun. ",
  start_date: DateTime.new(2023, 6, 10, 6, 0, 0),
  end_date: DateTime.new(2023, 6, 10, 7, 30, 0),
  cost: 20,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Av. Canal Olímpic, 24 Castelldefels – Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: louisa
)

event2.save(validate: false)

event3 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport
   you to a realm of pure euphoria. With every step, you unleash your inner expression,
   releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: DateTime.new(2023, 6, 6, 19, 0, 0),
  end_date: DateTime.new(2023, 6, 6, 20, 30, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: true,
  sport: salsa,
  event_creator: sarah
)

event3.save(validate: false)

event4 = Event.new(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 9, 18, 30, 0),
  end_date: DateTime.new(2023, 6, 9, 20, 30, 0),
  cost: 0,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event4.save(validate: false)

event5 = Event.new(
  title: "Ping-pong at Le Wagon",
  description: "Engage in friendly competition, surrounded by laugh and cheer. Enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: DateTime.new(2023, 6, 9, 19, 30, 0),
  end_date: DateTime.new(2023, 6, 9, 21, 30, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer del Bruc, 149, Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: leo
)

event5.save(validate: false)

event6 = Event.new(
  title: "Discover the art of archery!",
  description: "Discover the art of concentration and control, as you hone your aim and find your inner archer.
  Experience the exhilarating rush of hitting the bullseye for the very first time, and let the joy of this ancient
  sport ignite a newfound passion within you.",
  start_date: DateTime.new(2023, 7, 10, 13, 0, 0),
  end_date: DateTime.new(2023, 7, 10, 15, 0, 0),
  cost: 5,
  max_participants: 30,
  latitude: "",
  longitude: "",
  address: "Carrer Bonastruc de Porta, 10, 17001 Girona",
  is_indoor: true,
  sport: archery,
  event_creator: jacob
)

event6.save(validate: false)

event7 = Event.new(
  title: "Ping-pong at the park",
  description: "Engage in friendly competition, surrounded by the beauty of nature.
  Laugh, cheer, and enjoy the energetic atmosphere as you showcase your skills and
  create unforgettable moments with friends or fellow players.",
  start_date: DateTime.new(2023, 7, 12, 16, 30, 0),
  end_date: DateTime.new(2023, 7, 12, 18, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Carrer d'Aragó, 2, 08015 Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: leo
)

event7.save(validate: false)

event8 = Event.new(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy.
  Feel the rhythm of your synchronized strides as you explore new paths together.
  Encouragement fills the air, spurring you on to reach new heights.",
  start_date: DateTime.new(2023, 7, 12, 7, 30, 0),
  end_date: DateTime.new(2023, 7, 12, 12, 30, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Passeig de Picasso, 21, 08003 Barcelona",
  is_indoor: false,
  sport: trail,
  event_creator: sarah
)

event8.save(validate: false)

###################################
#        UPCOMING EVENTS          #
###################################

event9 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event10 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event11 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event12 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event13 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event14 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event15 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event16 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event17 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event18 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event19 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event20 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event21 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event22 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event23 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

event24 = Event.create!(
  title: "Energetic beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals
  and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through
  your veins.",
  start_date: DateTime.new(2023, 6, 20, 10, 0, 0),
  end_date: DateTime.new(2023, 6, 20, 14, 0, 0),
  cost: 0,
  max_participants: 2,
  latitude: "",
  longitude: "",
  address: "Plajta de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: louisa
)

puts "#{Event.all.size} events created!"
puts ""
puts ""


###################################
#                                 #
#                                 #
#    PREFERRED SPORT PER USER     #
#                                 #
#                                 #
###################################

puts "Creating preferred sport for users..."
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

puts "Created #{PreferredSport.all.size} preferred sports!"
puts ""
puts ""

###################################
#                                 #
#                                 #
#            BOOKINGS             #
#                                 #
#                                 #
###################################

puts "Creating bookings..."
puts ".........................."

booking1 = Booking.create!(
  user: leo,
  event: event1,
  is_accepted: true
)

booking2 = Booking.create!(
  user: jacob,
  event: event2,
  is_accepted: true
)

booking3 = Booking.create!(
  user: sarah,
  event: event6,
  is_accepted: true
)

booking4 = Booking.create!(
  user: louisa,
  event: event6,
  is_accepted: false
)

booking5 = Booking.create!(
  user: leo,
  event: event1,
  is_accepted: true
)

booking6 = Booking.create!(
  user: jacob,
  event: event2,
  is_accepted: true
)

booking7 = Booking.create!(
  user: sarah,
  event: event6,
  is_accepted: true
)

booking8 = Booking.create!(
  user: louisa,
  event: event6,
  is_accepted: false
)

booking9 = Booking.create!(
  user: leo,
  event: event1,
  is_accepted: true
)

booking10 = Booking.create!(
  user: jacob,
  event: event2,
  is_accepted: true
)

booking11 = Booking.create!(
  user: sarah,
  event: event6,
  is_accepted: true
)

booking12 = Booking.create!(
  user: louisa,
  event: event6,
  is_accepted: false
)

booking13 = Booking.create!(
  user: leo,
  event: event1,
  is_accepted: true
)

booking14 = Booking.create!(
  user: jacob,
  event: event2,
  is_accepted: true
)

booking15 = Booking.create!(
  user: sarah,
  event: event6,
  is_accepted: true
)

booking16 = Booking.create!(
  user: louisa,
  event: event6,
  is_accepted: false
)

puts "Created #{Booking.all.size} Bookings!"
puts ""
puts ""

###################################
#                                 #
#                                 #
#             FEELINGS            #
#                                 #
#                                 #
###################################

puts "Creating feelings..."
puts ".........................."

Feeling.create!(
  user: jacob,
  booking: booking2,
  feeling: 5,
  comment: "Such a nice experience! Amazing team-work!"
)

Feeling.create!(
  user: sarah,
  booking: booking3,
  feeling: 4,
  comment: "Quick booking confirmation and lovely first time yoga by the beach!"
)

Feeling.create!(
  user: louisa,
  booking: booking4,
  feeling: 4,
  comment: "Between yoga and meditation, very relaxing!"
)

puts "Created #{Feeling.all.size} Feelings!"
puts ""
puts ""

puts "Finished generating a nice seed!"
puts ""
