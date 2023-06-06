# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
User.destroy_all
Event.destroy_all
puts "Swept and cleansed!"

category = Alibye::CATEGORIES

puts "Creating users..."
puts ".........................."

# 4 USER MODEL

User.create!(
  email: "jacob@gmail.com",
  password: "123456",
  username: "Jacob",
  date_of_birth: "1988-12-30",
  bio: "I am passionate about adventure since my first age and start teaching archery 2 years.",
  gender: "male"
)

puts "done!"

User.create!(
  email: "sarah@gmail.com",
  password: "123456",
  username: "Sarah",
  date_of_birth: "1996-03-29",
  bio: "I love outdoor activities and sharing my time with others!",
  gender: "female"
)

puts "done!"

User.create!(
  email: "leo@gmail.com",
  password: "123456",
  username: "Leo",
  date_of_birth: "2020-02-05",
  bio: "I am a adventurous nomad always willing to discover new activities",
  gender: "male"
)

puts "done!"

User.create!(
  email: "marta@gmail.com",
  password: "123456",
  username: "Marta",
  date_of_birth: "1989-01-10",
  bio: "I am Marta and looking for buddies to get motivated!",
  gender: "female"
)

puts "done!"

# 7 EVENTS

Event.create!(
  title: "Kite Surf Chill Session",
  description: "Feel the exhilarating breeze and embrace the thrill of the ocean
  as you embark on a mesmerizing kite surf chill session.",
  start_date: "2023-06-07",
  end_date: "2023-06-07",
  cost: 20,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: "false"
)

puts "done!"

Event.create!(
  title: "Sunrise Yoga Session",
  description: "Awaken your senses and greet the day with a soul-nourishing Sunrise Yoga Session.
  Breathe in the crisp morning air as you flow through gentle movements, guided by the soft hues
  of the rising sun. ",
  start_date: "2023-20-07",
  end_date: "2023-20-07",
  cost: 20,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Av. Canal Olímpic, 24 Castelldefels – Barcelona",
  is_indoor: "false"
)

Event.create!(
  title: "Kite Surf Chill Session",
  description: "Chill kite surf paddle",
  start_date: "2023-06-07",
  end_date: "2023-06-07",
  cost: 20,
  max_participants: 10,
  latitude: "",
  longitude: "",
  address: "Passeig del Mare Nostrum, 14, 08039 Barcelona",
  is_indoor: "true"
)


t.string "title"
t.text "description"
t.bigint "user_id", null: false
t.bigint "sport_id", null: false
t.datetime "start_date"
t.datetime "end_date"
t.integer "cost"
t.integer "max_participants"
t.float "latitude"
t.float "longitude"
t.string "address"
t.boolean "is_indoor"
