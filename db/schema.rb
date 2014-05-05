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

ActiveRecord::Schema.define(version: 20140505023259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "matches", force: true do |t|
    t.integer "team_id"
    t.integer "challenger_id"
    t.integer "winner"
    t.integer "season_id"
    t.integer "challonge_match_number"
    t.text    "challonge_match_csv"
    t.integer "challonge_week"
    t.integer "team_challonge_number"
    t.integer "challenger_challonge_number"
  end

  create_table "players", force: true do |t|
    t.string  "name"
    t.integer "team_id"
    t.text    "bio"
    t.integer "user_id"
    t.string  "email"
  end

  create_table "seasons", force: true do |t|
    t.integer "number"
    t.string  "challonge_name"
    t.integer "num_weeks"
    t.integer "num_teams"
    t.boolean "active",         default: false
    t.string  "name"
  end

  create_table "teams", force: true do |t|
    t.string  "name"
    t.integer "season_id"
    t.integer "challonge_team_number"
  end

  create_table "users", force: true do |t|
    t.string  "name"
    t.text    "email"
    t.text    "password_digest"
    t.boolean "admin",           default: false
  end

end
