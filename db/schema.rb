# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_06_05_161012) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "event_id", null: false
    t.boolean "is_accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_bookings_on_event_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "chatrooms", force: :cascade do |t|
    t.bigint "event_id", null: false
    t.bigint "creator_id"
    t.bigint "participant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_chatrooms_on_creator_id"
    t.index ["event_id"], name: "index_chatrooms_on_event_id"
    t.index ["participant_id"], name: "index_chatrooms_on_participant_id"
  end

  create_table "events", force: :cascade do |t|
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
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_events_on_sport_id"
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "feelings", force: :cascade do |t|
    t.integer "feeling"
    t.text "comment"
    t.bigint "user_id", null: false
    t.bigint "booking_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_feelings_on_booking_id"
    t.index ["user_id"], name: "index_feelings_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "content"
    t.bigint "chatroom_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chatroom_id"], name: "index_messages_on_chatroom_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "preferred_sports", force: :cascade do |t|
    t.string "skill_level"
    t.bigint "user_id", null: false
    t.bigint "sport_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_id"], name: "index_preferred_sports_on_sport_id"
    t.index ["user_id"], name: "index_preferred_sports_on_user_id"
  end

  create_table "sport_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sports", force: :cascade do |t|
    t.string "name"
    t.boolean "is_team_sport"
    t.bigint "sport_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sport_category_id"], name: "index_sports_on_sport_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "username"
    t.date "date_of_birth"
    t.text "bio"
    t.string "gender"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "events"
  add_foreign_key "bookings", "users"
  add_foreign_key "chatrooms", "events"
  add_foreign_key "chatrooms", "users", column: "creator_id"
  add_foreign_key "chatrooms", "users", column: "participant_id"
  add_foreign_key "events", "sports"
  add_foreign_key "events", "users"
  add_foreign_key "feelings", "bookings"
  add_foreign_key "feelings", "users"
  add_foreign_key "messages", "chatrooms"
  add_foreign_key "messages", "users"
  add_foreign_key "preferred_sports", "sports"
  add_foreign_key "preferred_sports", "users"
  add_foreign_key "sports", "sport_categories"
end
