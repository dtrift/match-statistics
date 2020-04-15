ActiveRecord::Schema.define(version: 2020_04_14_152042) do
  enable_extension "plpgsql"

  create_table "match_statistics", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "match_id"
    t.float "distance_covered", default: 0.0, null: false
    t.float "productivity", default: 0.0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["match_id"], name: "index_match_statistics_on_match_id"
    t.index ["player_id"], name: "index_match_statistics_on_player_id"
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
  add_foreign_key "matches_teams", "matches"
  add_foreign_key "matches_teams", "teams"
  add_foreign_key "players", "teams"
end
