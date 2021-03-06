# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170814022732) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "court_fields", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "neighbourhood"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "longitude"
    t.float "latitude"
    t.integer "num_courts"
    t.string "sport"
  end

  create_table "games", force: :cascade do |t|
    t.datetime "date"
    t.datetime "time"
    t.integer "user_id"
    t.integer "field_id"
    t.string "skill"
    t.string "event_name"
    t.string "sport"
    t.integer "players_needed"
    t.integer "current_players"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.text "address"
    t.text "neighbourhood"
  end

  create_table "rsvps", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "game_id"
  end

  create_table "searches", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
