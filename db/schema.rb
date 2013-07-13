# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20130713053525) do

  create_table "games", force: true do |t|
    t.integer  "home_team_id"
    t.integer  "away_team_id"
    t.datetime "scheduled_at"
  end

  create_table "players", force: true do |t|
    t.string   "type"
    t.integer  "team_id"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "ffn_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "score_id"
  end

  create_table "schedulings", force: true do |t|
    t.integer "player_id"
    t.integer "game_id"
    t.string  "status"
    t.text    "notes"
    t.integer "score_id"
  end

  create_table "scores", force: true do |t|
    t.integer  "passing_yards",   default: 0
    t.integer  "rushing_yards",   default: 0
    t.integer  "receiving_yards", default: 0
    t.integer  "receptions",      default: 0
    t.integer  "passing_tds",     default: 0
    t.integer  "rushing_tds",     default: 0
    t.integer  "receiving_tds",   default: 0
    t.integer  "interceptions",   default: 0
    t.integer  "fumbles",         default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string  "name"
    t.string  "city"
    t.string  "state"
    t.integer "wins"
    t.integer "losses"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
