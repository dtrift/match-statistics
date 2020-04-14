ActiveRecord::Schema.define(version: 2020_04_14_035616) do
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
  end

  add_foreign_key "match_statistics", "matches"
  add_foreign_key "match_statistics", "players"
  add_foreign_key "players", "teams"
end
