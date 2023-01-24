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

ActiveRecord::Schema.define(version: 2023_01_24_003129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dreams", force: :cascade do |t|
    t.text "name"
    t.text "image"
    t.text "avatar"
    t.text "province"
    t.text "color"
  end

  create_table "dreams_players", force: :cascade do |t|
    t.integer "dream_id"
    t.integer "player_id"
  end

  create_table "dreams_users", force: :cascade do |t|
    t.integer "dream_id"
    t.integer "user_id"
  end

  create_table "moves", force: :cascade do |t|
    t.text "name"
    t.text "category"
    t.text "position"
    t.text "description"
    t.text "image"
  end

  create_table "moves_players", force: :cascade do |t|
    t.integer "move_id"
    t.integer "player_id"
  end

  create_table "players", force: :cascade do |t|
    t.text "name"
    t.text "position"
    t.text "teamname"
    t.text "playernumber"
    t.text "description"
    t.text "quote"
    t.text "image"
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.boolean "admin", default: false
  end

end
