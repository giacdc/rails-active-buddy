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
#                                 #
# DECLARING VARIABLES AND METHODS #
#                                 #
###################################

today = DateTime.now

def set_time_to_datetime(datetime, time_hour, time_minutes)
  DateTime.new(datetime.year, datetime.month, datetime.day, time_hour, time_minutes, 0)
end

###################################
#        LAST WEEK EVENTS         #
###################################

puts "Creating events for last week..."
puts ".........................."

kite_surf_last_week1 = Event.new(
  title: "Kite Surf Chill Session",
  description: "Feel the exhilarating breeze and embrace the thrill of the ocean as you embark on a mesmerizing kite surf chill session.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:saturday), 16, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:saturday), 19, 0),
  cost: 20,
  max_participants: 3,
  latitude: "",
  longitude: "",
  address: "Av. Canal Olímpic, 24 Castelldefels - Barcelona",
  is_indoor: false,
  sport: kitesurf,
  event_creator: sarah
)

kite_surf_last_week1.save!(validate: false)

kite_surf_last_week2 = Event.new(
  title: "Kite Surf Chill Session",
  description: "Feel the exhilarating breeze and embrace the thrill of the ocean as you embark on a mesmerizing kite surf chill session.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:sunday), 8, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:sunday), 11, 0),
  cost: 20,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Av. Canal Olímpic, 24 Castelldefels - Barcelona",
  is_indoor: false,
  sport: kitesurf,
  event_creator: louisa
)

kite_surf_last_week2.save!(validate: false)

yoga_last_week1 = Event.new(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session. Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues of the rising sun. ",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week, 6, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week, 7, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_last_week1.save!(validate: false)

yoga_last_week2 = Event.new(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session. Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues of the rising sun. ",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:wednesday), 6, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:wednesday), 7, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_last_week2.save!(validate: false)

yoga_last_week3 = Event.new(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session. Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues of the rising sun. ",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:friday), 6, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:friday), 7, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_last_week3.save!(validate: false)

yoga_last_week4 = Event.new(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:tuesday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:tuesday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: benny
)

yoga_last_week4.save!(validate: false)

yoga_last_week5 = Event.new(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:thursday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:thursday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: benny
)

yoga_last_week5.save!(validate: false)

yoga_last_week6 = Event.new(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:saturday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:saturday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_last_week6.save!(validate: false)

yoga_last_week7 = Event.new(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:sunday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:sunday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: benny
)

yoga_last_week7.save!(validate: false)

volleyball_last_week1 = Event.new(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through your veins.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:friday), 18, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:friday), 21, 0),
  cost: 0,
  max_participants: 12,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: jacob
)

volleyball_last_week1.save!(validate: false)

volleyball_last_week2 = Event.new(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through your veins.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:saturday), 18, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:saturday), 20, 0),
  cost: 0,
  max_participants: 12,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: africa
)

volleyball_last_week2.save!(validate: false)

volleyball_last_week3 = Event.new(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through your veins.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:thursday), 18, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:thursday), 20, 0),
  cost: 0,
  max_participants: 12,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: emmanuelle
)

volleyball_last_week3.save!(validate: false)

pingpong_last_week1 = Event.new(
  title: "Ping-pong at the park",
  description: "Engage in friendly competition, surrounded by the beauty of nature. Laugh, cheer, and enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week, 17, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week, 19, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer d'Aragó, 2, 08015 Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: maria
)

pingpong_last_week1.save!(validate: false)

pingpong_last_week2 = Event.new(
  title: "Ping-pong at the park",
  description: "Engage in friendly competition, surrounded by the beauty of nature. Laugh, cheer, and enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:wednesday), 17, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:wednesday), 19, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer d'Aragó, 2, 08015 Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: maria
)

pingpong_last_week2.save!(validate: false)

pingpong_last_week3 = Event.new(
  title: "Ping-pong at Le Wagon",
  description: "Engage in friendly competition, surrounded by laugh and cheer. Enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:thursday), 17, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:thursday), 19, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer del Bruc, 149, Barcelona",
  is_indoor: true,
  sport: ping_pong,
  event_creator: frank
)

pingpong_last_week3.save!(validate: false)

pingpong_last_week4 = Event.new(
  title: "Ping-pong at Le Wagon",
  description: "Engage in friendly competition, surrounded by laugh and cheer. Enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:thursday), 18, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.prev_week.next_occurring(:thursday), 20, 30),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer del Bruc, 149, Barcelona",
  is_indoor: true,
  sport: ping_pong,
  event_creator: frank
)

pingpong_last_week4.save!(validate: false)

trail_last_week1 = Event.new(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy. Feel the rhythm of your synchronized strides as you explore new paths together. Encouragement fills the air, spurring you on to reach new heights.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:saturday), 8, 0),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:saturday), 9, 30),
  cost: 0,
  max_participants: 2,
  latitude: "41.44793703542139",
  longitude: "2.1368442630331237",
  address: "Mirador de Cerdanyola",
  is_indoor: false,
  sport: trail,
  event_creator: sarah
)

trail_last_week1.save!(validate: false)

trail_last_week2 = Event.new(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy. Feel the rhythm of your synchronized strides as you explore new paths together. Encouragement fills the air, spurring you on to reach new heights.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:saturday), 9, 0),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:saturday), 10, 0),
  cost: 0,
  max_participants: 2,
  latitude: "41.41939260675992",
  longitude: "2.127402691880014",
  address: "Passeig de les Aigües",
  is_indoor: false,
  sport: trail,
  event_creator: juana
)

trail_last_week2.save!(validate: false)

trail_last_week3 = Event.new(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy. Feel the rhythm of your synchronized strides as you explore new paths together. Encouragement fills the air, spurring you on to reach new heights.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:sunday), 9, 0),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:sunday), 10, 0),
  cost: 0,
  max_participants: 2,
  latitude: "41.41939260675992",
  longitude: "2.127402691880014",
  address: "Passeig de les Aigües",
  is_indoor: false,
  sport: trail,
  event_creator: juana
)

trail_last_week3.save!(validate: false)

archery_last_week1 = Event.new(
  title: "Discover the art of archery!",
  description: "Discover the art of concentration and control, as you hone your aim and find your inner archer.Experience the exhilarating rush of hitting the bullseye for the very first time, and let the joy of this ancient sport ignite a newfound passion within you.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:saturday), 16, 0),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:saturday), 19, 0),
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Carrer Bonastruc de Porta, 10, 17001 Girona",
  is_indoor: true,
  sport: archery,
  event_creator: mike
)

archery_last_week1.save!(validate: false)

archery_last_week2 = Event.new(
  title: "Discover the art of archery!",
  description: "Discover the art of concentration and control, as you hone your aim and find your inner archer.Experience the exhilarating rush of hitting the bullseye for the very first time, and let the joy of this ancient sport ignite a newfound passion within you.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:sunday), 16, 0),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:sunday), 19, 0),
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Carrer Bonastruc de Porta, 10, 17001 Girona",
  is_indoor: true,
  sport: archery,
  event_creator: mike
)

archery_last_week2.save!(validate: false)

salsa_last_week1 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.prev_week, 20, 0),
  end_date: set_time_to_datetime(today.prev_week, 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_last_week1.save!(validate: false)

salsa_last_week2 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:tuesday), 20, 0),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:tuesday), 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_last_week2.save!(validate: false)

salsa_last_week3 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:wednesday), 20, 0),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:wednesday), 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_last_week3.save!(validate: false)

salsa_last_week4 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:thursday), 17, 30),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:thursday), 18, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_last_week4.save!(validate: false)

salsa_last_week5 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:thursday), 18, 30),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:thursday), 19, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_last_week5.save!(validate: false)

salsa_last_week6 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:friday), 17, 30),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:friday), 18, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_last_week6.save!(validate: false)

salsa_last_week7 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:friday), 18, 30),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:friday), 19, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_last_week7.save!(validate: false)

salsa_last_week8 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.prev_week.next_occurring(:saturday), 20, 0),
  end_date: set_time_to_datetime(today.prev_week.next_occurring(:saturday), 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_last_week8.save!(validate: false)

puts "Done!"

###################################
#        THIS WEEK EVENTS         #
###################################

puts "Creating events for this week..."
puts ".........................."

kite_surf_this_week1 = Event.new(
  title: "Kite Surf Chill Session",
  description: "Feel the exhilarating breeze and embrace the thrill of the ocean as you embark on a mesmerizing kite surf chill session.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 16, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 19, 0),
  cost: 20,
  max_participants: 3,
  latitude: "",
  longitude: "",
  address: "Av. Canal Olímpic, 24 Castelldefels - Barcelona",
  is_indoor: false,
  sport: kitesurf,
  event_creator: sarah
)

kite_surf_this_week1.start_date.future? ? kite_surf_this_week1.save! : kite_surf_this_week1.save!(validate: false)

kite_surf_this_week2 = Event.new(
  title: "Kite Surf Chill Session",
  description: "Feel the exhilarating breeze and embrace the thrill of the ocean as you embark on a mesmerizing kite surf chill session.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:sunday), 8, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:sunday), 11, 0),
  cost: 20,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Av. Canal Olímpic, 24 Castelldefels - Barcelona",
  is_indoor: false,
  sport: kitesurf,
  event_creator: louisa
)

kite_surf_this_week2.start_date.future? ? kite_surf_this_week2.save! : kite_surf_this_week2.save!(validate: false)

yoga_this_week1 = Event.new(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session. Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues of the rising sun. ",
  start_date: set_time_to_datetime(today.beginning_of_week, 6, 0),
  end_date: set_time_to_datetime(today.beginning_of_week, 7, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_this_week1.start_date.future? ? yoga_this_week1.save! : yoga_this_week1.save!(validate: false)

yoga_this_week2 = Event.new(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session. Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues of the rising sun. ",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:wednesday), 6, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:wednesday), 7, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_this_week2.start_date.future? ? yoga_this_week2.save! : yoga_this_week2.save!(validate: false)

yoga_this_week3 = Event.new(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session. Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues of the rising sun. ",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:friday), 6, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:friday), 7, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_this_week3.start_date.future? ? yoga_this_week3.save! : yoga_this_week3.save!(validate: false)

yoga_this_week4 = Event.new(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:tuesday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:tuesday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: benny
)

yoga_this_week4.start_date.future? ? yoga_this_week4.save! : yoga_this_week4.save!(validate: false)

yoga_this_week5 = Event.new(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: benny
)

yoga_this_week5.start_date.future? ? yoga_this_week5.save! : yoga_this_week5.save!(validate: false)

yoga_this_week6 = Event.new(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_this_week6.start_date.future? ? yoga_this_week6.save! : yoga_this_week6.save!(validate: false)

yoga_this_week7 = Event.new(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:sunday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:sunday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: benny
)

yoga_this_week7.start_date.future? ? yoga_this_week7.save! : yoga_this_week7.save!(validate: false)

volleyball_this_week1 = Event.new(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through your veins.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:friday), 18, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:friday), 21, 0),
  cost: 0,
  max_participants: 12,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: jacob
)

volleyball_this_week1.start_date.future? ? volleyball_this_week1.save! : volleyball_this_week1.save!(validate: false)

volleyball_this_week2 = Event.new(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through your veins.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 18, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 20, 0),
  cost: 0,
  max_participants: 12,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: africa
)

volleyball_this_week2.start_date.future? ? volleyball_this_week2.save! : volleyball_this_week2.save!(validate: false)

volleyball_this_week3 = Event.new(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through your veins.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 18, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 20, 0),
  cost: 0,
  max_participants: 12,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: emmanuelle
)

volleyball_this_week3.start_date.future? ? volleyball_this_week3.save! : volleyball_this_week3.save!(validate: false)

pingpong_this_week1 = Event.new(
  title: "Ping-pong at the park",
  description: "Engage in friendly competition, surrounded by the beauty of nature. Laugh, cheer, and enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.beginning_of_week, 17, 0),
  end_date: set_time_to_datetime(today.beginning_of_week, 19, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer d'Aragó, 2, 08015 Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: maria
)

pingpong_this_week1.start_date.future? ? pingpong_this_week1.save! : pingpong_this_week1.save!(validate: false)

pingpong_this_week2 = Event.new(
  title: "Ping-pong at the park",
  description: "Engage in friendly competition, surrounded by the beauty of nature. Laugh, cheer, and enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:wednesday), 17, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:wednesday), 19, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer d'Aragó, 2, 08015 Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: maria
)

pingpong_this_week2.start_date.future? ? pingpong_this_week2.save! : pingpong_this_week2.save!(validate: false)

pingpong_this_week3 = Event.new(
  title: "Ping-pong at Le Wagon",
  description: "Engage in friendly competition, surrounded by laugh and cheer. Enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 17, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 19, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer del Bruc, 149, Barcelona",
  is_indoor: true,
  sport: ping_pong,
  event_creator: frank
)

pingpong_this_week3.start_date.future? ? pingpong_this_week3.save! : pingpong_this_week3.save!(validate: false)

pingpong_this_week4 = Event.new(
  title: "Ping-pong at Le Wagon",
  description: "Engage in friendly competition, surrounded by laugh and cheer. Enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 18, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 20, 30),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer del Bruc, 149, Barcelona",
  is_indoor: true,
  sport: ping_pong,
  event_creator: frank
)

pingpong_this_week4.start_date.future? ? pingpong_this_week4.save! : pingpong_this_week4.save!(validate: false)

trail_this_week1 = Event.new(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy. Feel the rhythm of your synchronized strides as you explore new paths together. Encouragement fills the air, spurring you on to reach new heights.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 8, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 9, 30),
  cost: 0,
  max_participants: 2,
  latitude: "41.44793703542139",
  longitude: "2.1368442630331237",
  address: "Mirador de Cerdanyola",
  is_indoor: false,
  sport: trail,
  event_creator: sarah
)

trail_this_week1.start_date.future? ? trail_this_week1.save! : trail_this_week1.save!(validate: false)

trail_this_week2 = Event.new(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy. Feel the rhythm of your synchronized strides as you explore new paths together. Encouragement fills the air, spurring you on to reach new heights.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 9, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 10, 0),
  cost: 0,
  max_participants: 2,
  latitude: "41.41939260675992",
  longitude: "2.127402691880014",
  address: "Passeig de les Aigües",
  is_indoor: false,
  sport: trail,
  event_creator: juana
)

trail_this_week2.start_date.future? ? trail_this_week2.save! : trail_this_week2.save!(validate: false)

trail_this_week3 = Event.new(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy. Feel the rhythm of your synchronized strides as you explore new paths together. Encouragement fills the air, spurring you on to reach new heights.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:sunday), 9, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:sunday), 10, 0),
  cost: 0,
  max_participants: 2,
  latitude: "41.41939260675992",
  longitude: "2.127402691880014",
  address: "Passeig de les Aigües",
  is_indoor: false,
  sport: trail,
  event_creator: juana
)

trail_this_week3.start_date.future? ? trail_this_week3.save! : trail_this_week3.save!(validate: false)

archery_this_week1 = Event.new(
  title: "Discover the art of archery!",
  description: "Discover the art of concentration and control, as you hone your aim and find your inner archer.Experience the exhilarating rush of hitting the bullseye for the very first time, and let the joy of this ancient sport ignite a newfound passion within you.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 16, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 19, 0),
  cost: 0,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Carrer Bonastruc de Porta, 10, 17001 Girona",
  is_indoor: true,
  sport: archery,
  event_creator: mike
)

archery_this_week1.start_date.future? ? archery_this_week1.save! : archery_this_week1.save!(validate: false)

archery_this_week2 = Event.new(
  title: "Discover the art of archery!",
  description: "Discover the art of concentration and control, as you hone your aim and find your inner archer.Experience the exhilarating rush of hitting the bullseye for the very first time, and let the joy of this ancient sport ignite a newfound passion within you.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:sunday), 16, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:sunday), 19, 0),
  cost: 0,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Carrer Bonastruc de Porta, 10, 17001 Girona",
  is_indoor: true,
  sport: archery,
  event_creator: mike
)

archery_this_week2.start_date.future? ? archery_this_week2.save! : archery_this_week2.save!(validate: false)

salsa_this_week1 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.beginning_of_week, 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week, 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_this_week1.start_date.future? ? salsa_this_week1.save! : salsa_this_week1.save!(validate: false)

salsa_this_week2 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:tuesday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:tuesday), 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_this_week2.start_date.future? ? salsa_this_week2.save! : salsa_this_week2.save!(validate: false)

salsa_this_week3 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:wednesday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:wednesday), 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_this_week3.start_date.future? ? salsa_this_week3.save! : salsa_this_week3.save!(validate: false)

salsa_this_week4 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 17, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 18, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_this_week4.start_date.future? ? salsa_this_week4.save! : salsa_this_week4.save!(validate: false)

salsa_this_week5 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 18, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:thursday), 19, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_this_week5.start_date.future? ? salsa_this_week5.save! : salsa_this_week5.save!(validate: false)

salsa_this_week6 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:friday), 17, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:friday), 18, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_this_week6.start_date.future? ? salsa_this_week6.save! : salsa_this_week6.save!(validate: false)

salsa_this_week7 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:friday), 18, 30),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:friday), 19, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_this_week7.start_date.future? ? salsa_this_week7.save! : salsa_this_week7.save!(validate: false)

salsa_this_week8 = Event.new(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 20, 0),
  end_date: set_time_to_datetime(today.beginning_of_week.next_occurring(:saturday), 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_this_week8.start_date.future? ? salsa_this_week8.save! : salsa_this_week8.save!(validate: false)

puts "Done!"

###################################
#        NEXT WEEK EVENTS         #
###################################

puts "Creating events for next week..."
puts ".........................."

kite_surf_next_week1 = Event.create!(
  title: "Kite Surf Chill Session",
  description: "Feel the exhilarating breeze and embrace the thrill of the ocean as you embark on a mesmerizing kite surf chill session.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 16, 30),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 19, 0),
  cost: 20,
  max_participants: 3,
  latitude: "",
  longitude: "",
  address: "Av. Canal Olímpic, 24 Castelldefels - Barcelona",
  is_indoor: false,
  sport: kitesurf,
  event_creator: sarah
)

kite_surf_next_week2 = Event.create!(
  title: "Kite Surf Chill Session",
  description: "Feel the exhilarating breeze and embrace the thrill of the ocean as you embark on a mesmerizing kite surf chill session.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:sunday), 8, 30),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:sunday), 11, 0),
  cost: 20,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Av. Canal Olímpic, 24 Castelldefels - Barcelona",
  is_indoor: false,
  sport: kitesurf,
  event_creator: louisa
)

yoga_next_week1 = Event.create!(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session. Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues of the rising sun. ",
  start_date: set_time_to_datetime(today.next_week, 6, 0),
  end_date: set_time_to_datetime(today.next_week, 7, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_next_week2 = Event.create!(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session. Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues of the rising sun. ",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:wednesday), 6, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:wednesday), 7, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_next_week3 = Event.create!(
  title: "Sunrise Yoga Meditation",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session. Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues of the rising sun. ",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:friday), 6, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:friday), 7, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_next_week4 = Event.create!(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:tuesday), 20, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:tuesday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: benny
)

yoga_next_week5 = Event.create!(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 20, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: benny
)

yoga_next_week6 = Event.create!(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 20, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig de Calvell, 45, 08005 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: leo
)

yoga_next_week7 = Event.create!(
  title: "Evening Yoga Meditation",
  description: "Awaken your senses and say thanks for your the day with a soul-nourishing Sunset Yoga Session.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:sunday), 20, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:sunday), 21, 0),
  cost: 20,
  max_participants: 8,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: false,
  sport: yoga,
  event_creator: benny
)

volleyball_next_week1 = Event.create!(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through your veins.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:friday), 18, 30),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:friday), 21, 0),
  cost: 0,
  max_participants: 12,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: jacob
)

volleyball_next_week2 = Event.create!(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through your veins.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 18, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 20, 0),
  cost: 0,
  max_participants: 12,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: africa
)

volleyball_next_week3 = Event.create!(
  title: "Evening beach volley session!",
  description: "Dive into beach volleyball fun! Communication flows effortlessly through unspoken signals and instinctive teamwork. With each powerful serve and skillful spike, you feel the adrenaline surge through your veins.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 18, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 20, 0),
  cost: 0,
  max_participants: 12,
  latitude: "",
  longitude: "",
  address: "Platja de la Mora, 08918 Badalona, Barcelone",
  is_indoor: false,
  sport: volleyball,
  event_creator: emmanuelle
)

pingpong_next_week1 = Event.create!(
  title: "Ping-pong at the park",
  description: "Engage in friendly competition, surrounded by the beauty of nature. Laugh, cheer, and enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.next_week, 17, 0),
  end_date: set_time_to_datetime(today.next_week, 19, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer d'Aragó, 2, 08015 Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: maria
)

pingpong_next_week2 = Event.create!(
  title: "Ping-pong at the park",
  description: "Engage in friendly competition, surrounded by the beauty of nature. Laugh, cheer, and enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:wednesday), 17, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:wednesday), 19, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer d'Aragó, 2, 08015 Barcelona",
  is_indoor: false,
  sport: ping_pong,
  event_creator: maria
)

pingpong_next_week3 = Event.create!(
  title: "Ping-pong at Le Wagon",
  description: "Engage in friendly competition, surrounded by laugh and cheer. Enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 17, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 19, 0),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer del Bruc, 149, Barcelona",
  is_indoor: true,
  sport: ping_pong,
  event_creator: frank
)

pingpong_next_week4 = Event.create!(
  title: "Ping-pong at Le Wagon",
  description: "Engage in friendly competition, surrounded by laugh and cheer. Enjoy the energetic atmosphere as you showcase your skills and create unforgettable moments with friends or fellow players.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 18, 30),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 20, 30),
  cost: 0,
  max_participants: 4,
  latitude: "",
  longitude: "",
  address: "Carrer del Bruc, 149, Barcelona",
  is_indoor: true,
  sport: ping_pong,
  event_creator: frank
)

trail_next_week1 = Event.create!(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy. Feel the rhythm of your synchronized strides as you explore new paths together. Encouragement fills the air, spurring you on to reach new heights.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 8, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 9, 30),
  cost: 0,
  max_participants: 2,
  latitude: "41.44793703542139",
  longitude: "2.1368442630331237",
  address: "Mirador de Cerdanyola",
  is_indoor: false,
  sport: trail,
  event_creator: sarah
)

trail_next_week2 = Event.create!(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy. Feel the rhythm of your synchronized strides as you explore new paths together. Encouragement fills the air, spurring you on to reach new heights.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 9, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 10, 0),
  cost: 0,
  max_participants: 2,
  latitude: "41.41939260675992",
  longitude: "2.127402691880014",
  address: "Passeig de les Aigües",
  is_indoor: false,
  sport: trail,
  event_creator: juana
)

trail_next_week3 = Event.create!(
  title: "A step further",
  description: "Embark on an invigorating trail session in the nature with your buddy. Feel the rhythm of your synchronized strides as you explore new paths together. Encouragement fills the air, spurring you on to reach new heights.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:sunday), 9, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:sunday), 10, 0),
  cost: 0,
  max_participants: 2,
  latitude: "41.41939260675992",
  longitude: "2.127402691880014",
  address: "Passeig de les Aigües",
  is_indoor: false,
  sport: trail,
  event_creator: juana
)

archery_next_week1 = Event.create!(
  title: "Discover the art of archery!",
  description: "Discover the art of concentration and control, as you hone your aim and find your inner archer.Experience the exhilarating rush of hitting the bullseye for the very first time, and let the joy of this ancient sport ignite a newfound passion within you.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 16, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 19, 0),
  cost: 0,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Carrer Bonastruc de Porta, 10, 17001 Girona",
  is_indoor: true,
  sport: archery,
  event_creator: mike
)

archery_next_week2 = Event.create!(
  title: "Discover the art of archery!",
  description: "Discover the art of concentration and control, as you hone your aim and find your inner archer.Experience the exhilarating rush of hitting the bullseye for the very first time, and let the joy of this ancient sport ignite a newfound passion within you.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:sunday), 16, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:sunday), 19, 0),
  cost: 0,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Carrer Bonastruc de Porta, 10, 17001 Girona",
  is_indoor: true,
  sport: archery,
  event_creator: mike
)

salsa_next_week1 = Event.create!(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.next_week, 20, 0),
  end_date: set_time_to_datetime(today.next_week, 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_next_week2 = Event.create!(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:tuesday), 20, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:tuesday), 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_next_week3 = Event.create!(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:wednesday), 20, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:wednesday), 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_next_week4 = Event.create!(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 17, 30),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 18, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_next_week5 = Event.create!(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 18, 30),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:thursday), 19, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

salsa_next_week6 = Event.create!(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:friday), 17, 30),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:friday), 18, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_next_week7 = Event.create!(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:friday), 18, 30),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:friday), 19, 30),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: berta
)

salsa_next_week8 = Event.create!(
  title: "Vibrate on the sound of salsa!",
  description: "Let the sultry movements, intricate footwork, and sensual spins transport you to a realm of pure euphoria. With every step, you unleash your inner expression, releasing inhibitions and embracing the freedom that salsa brings.",
  start_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 20, 0),
  end_date: set_time_to_datetime(today.next_week.next_occurring(:saturday), 21, 0),
  cost: 10,
  max_participants: 10,
  latitude: "41.40141648840976",
  longitude: "2.1608093403115607",
  address: "Carrer del Perill, 10, 08012 Barcelona",
  is_indoor: true,
  sport: salsa,
  event_creator: karen
)

puts "Done!"

###################################
#        EVENTS IN 2 WEEKS        #
###################################

###################################
#                                 #
#  ITERATING OVER ALL EVENTS TO   #
#       GEOCODE LAT AND LONG      #
#                                 #
###################################

Event.all.each do |event|
  next if event.latitude

  search = Geocoder.search(event.address)
  event.latitude = search.first.coordinates[0]
  event.longitude = search.first.coordinates[1]
  event.save!(validate: false)
end

puts "Created #{Event.all.size} events!"
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

###################################
# Leo
###################################

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
  skill_level: "Advanced",
  user: leo,
  sport: yoga
)

PreferredSport.create!(
  skill_level: "Beginner",
  user: leo,
  sport: trail
)

###################################
# Sarah
###################################

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

###################################
# Jacob
###################################

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
  skill_level: "Advanced",
  user: jacob,
  sport: trail
)

###################################
# Louisa
###################################

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

###################################
# Africa
###################################

PreferredSport.create!(
  skill_level: "Beginner",
  user: africa,
  sport: ping_pong
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: africa,
  sport: volleyball
)

###################################
# Benny
###################################

PreferredSport.create!(
  skill_level: "Advanced",
  user: benny,
  sport: kitesurf
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: benny,
  sport: yoga
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: benny,
  sport: volleyball
)

###################################
# Emmanuelle
###################################

PreferredSport.create!(
  skill_level: "Beginner",
  user: emmanuelle,
  sport: ping_pong
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: emmanuelle,
  sport: archery
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: emmanuelle,
  sport: volleyball
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: emmanuelle,
  sport: trail
)

###################################
# John
###################################

PreferredSport.create!(
  skill_level: "Advanced",
  user: john,
  sport: kitesurf
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: john,
  sport: yoga
)

###################################
# Juana
###################################

PreferredSport.create!(
  skill_level: "Intermediate",
  user: juana,
  sport: yoga
)

PreferredSport.create!(
  skill_level: "Beginner",
  user: juana,
  sport: trail
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: juana,
  sport: salsa
)

###################################
# Karen
###################################

PreferredSport.create!(
  skill_level: "Advanced",
  user: karen,
  sport: kitesurf
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: karen,
  sport: yoga
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: karen,
  sport: volleyball
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: karen,
  sport: salsa
)

###################################
# Maria
###################################

PreferredSport.create!(
  skill_level: "Advanced",
  user: maria,
  sport: ping_pong
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: maria,
  sport: salsa
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: maria,
  sport: volleyball
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: maria,
  sport: trail
)

###################################
# Mike
###################################

PreferredSport.create!(
  skill_level: "Intermediate",
  user: mike,
  sport: volleyball
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: mike,
  sport: archery
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: mike,
  sport: salsa
)

###################################
# Pedro
###################################

PreferredSport.create!(
  skill_level: "Beginner",
  user: pedro,
  sport: ping_pong
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: pedro,
  sport: volleyball
)

###################################
# Peter
###################################

PreferredSport.create!(
  skill_level: "Advanced",
  user: peter,
  sport: kitesurf
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: peter,
  sport: yoga
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: peter,
  sport: salsa
)

###################################
# Frank
###################################

PreferredSport.create!(
  skill_level: "Intermediate",
  user: frank,
  sport: ping_pong
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: frank,
  sport: archery
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: frank,
  sport: volleyball
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: frank,
  sport: trail
)

###################################
# Berta
###################################

PreferredSport.create!(
  skill_level: "Advanced",
  user: berta,
  sport: kitesurf
)

PreferredSport.create!(
  skill_level: "Intermediate",
  user: berta,
  sport: yoga
)

PreferredSport.create!(
  skill_level: "Advanced",
  user: berta,
  sport: salsa
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

# Let's sum all the participants that every event can have to determine how many times we will iterate for creating bookings

bookings_to_be_created = 0
Event.all.each do |event|
  bookings_to_be_created += event.max_participants
end

# Let's now create bookings in a third of that amount

(bookings_to_be_created / 8).times do
  Booking.create!(
    user: User.all.sample,
    event: Event.all.sample,
    is_accepted: [true, false].sample
  )
end

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

feelings = [
  "The event was thrilling, keeping me on the edge of my seat.",
  "It was an exhilarating experience, filled with excitement and adrenaline.",
  "The atmosphere was electric, charged with energy and enthusiasm.",
  "The event was inspiring, leaving me motivated and uplifted.",
  "It was a nerve-wracking event, keeping me on pins and needles throughout.",
  "The event was spectacular, with visually stunning moments that took my breath away.",
  "It was a memorable experience that left a lasting impression on me.",
  "The event brought about a sense of euphoria, filling me with joy and elation.",
  "It was a highly competitive event, showcasing exceptional skill and intense competition.",
  "The event was engaging, capturing my attention and keeping me engrossed from start to finish."
]

Event.all.each do |event|
  next if event.start_date.future?

  event.bookings.all.each do |booking|
    Feeling.create!(
      user: booking.user,
      booking: booking,
      feeling: [4, 5].sample,
      comment: feelings.sample
    )
  end
end

puts "Created #{Feeling.all.size} Feelings!"
puts ""
puts ""

puts "Creating Chatrooms..."
puts ".........................."

Event.all.each do |event|
  Chatroom.create!(event: event, creator: event.event_creator)
end

puts "Created #{Chatroom.all.size} Chatrooms!"
puts ""
puts ""

puts "Finished generating a nice seed!"
puts ""
