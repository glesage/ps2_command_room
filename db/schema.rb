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

ActiveRecord::Schema.define(version: 20150603172730) do

  create_table "air_squads", force: :cascade do |t|
    t.integer  "platoon"
    t.integer  "squad"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "controls", force: :cascade do |t|
    t.string   "NC"
    t.string   "TR"
    t.string   "VS"
    t.integer  "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.integer  "faction"
    t.string   "name"
    t.integer  "ps2_id"
    t.string   "type_name"
    t.integer  "type_id"
    t.integer  "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ground_squads", force: :cascade do |t|
    t.integer  "platoon"
    t.integer  "squad"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hexes", force: :cascade do |t|
    t.integer  "type_id"
    t.integer  "facility_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "maps", force: :cascade do |t|
    t.string   "name"
    t.integer  "ps2_id"
    t.integer  "server_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "end_time"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.integer  "server_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "populations", force: :cascade do |t|
    t.string   "NC"
    t.string   "TR"
    t.string   "VS"
    t.integer  "map_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positions", force: :cascade do |t|
    t.integer  "x"
    t.integer  "y"
    t.integer  "hex_id"
    t.integer  "air_squad_id"
    t.integer  "ground_squad_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "promotions", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.string   "image_path"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servers", force: :cascade do |t|
    t.string   "name"
    t.integer  "ps2_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
