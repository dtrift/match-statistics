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

ActiveRecord::Schema.define(version: 2020_04_18_073939) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "match_statistics", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "match_id"
    t.float "distance_covered", default: 0.0, null: false
    t.float "productivity", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "team_id"
    t.boolean "productivity_success", default: false
    t.boolean "distance_success", default: false
    t.index ["match_id"], name: "index_match_statistics_on_match_id"
    t.index ["player_id"], name: "index_match_statistics_on_player_id"
    t.index ["team_id"], name: "index_match_statistics_on_team_id"
  end

  create_table "matches", force: :cascade do |t|
    t.string "city", null: false
    t.datetime "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches_teams", force: :cascade do |t|
    t.bigint "match_id"
    t.bigint "team_id"
    t.index ["match_id"], name: "index_matches_teams_on_match_id"
    t.index ["team_id"], name: "index_matches_teams_on_team_id"
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
  end

  add_foreign_key "match_statistics", "matches"
  add_foreign_key "match_statistics", "players"
  add_foreign_key "match_statistics", "teams"
  add_foreign_key "matches_teams", "matches"
  add_foreign_key "matches_teams", "teams"
  add_foreign_key "players", "teams"
end
