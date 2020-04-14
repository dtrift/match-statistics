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

ActiveRecord::Schema.define(version: 2020_04_14_035616) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_statistics", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "match_id"
    t.decimal "distance_covered", default: "0.0", null: false
    t.decimal "productivity", default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_statistics_on_match_id"
    t.index ["player_id"], name: "index_match_statistics_on_player_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "host_id"
    t.bigint "guest_id"
    t.datetime "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guest_id"], name: "index_matches_on_guest_id"
    t.index ["host_id"], name: "index_matches_on_host_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "number", null: false
    t.bigint "team_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "title", null: false
    t.string "city", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "match_id"
    t.index ["match_id"], name: "index_teams_on_match_id"
  end

  add_foreign_key "match_statistics", "matches"
  add_foreign_key "match_statistics", "players"
  add_foreign_key "players", "teams"
  add_foreign_key "teams", "matches"
end
