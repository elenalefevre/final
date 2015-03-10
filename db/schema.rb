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

ActiveRecord::Schema.define(version: 0) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
  end

  create_table "venues", force: :cascade do |t|
    t.string  "name"
    t.string  "street_number"
    t.string  "street"
    t.string  "zip"
    t.string  "neighborhood"
    t.integer "city_id"
    t.string  "state"
    t.string  "latitude"
    t.string  "longitude"
    t.binary  "image"
    t.string  "dress_code"
    t.text    "hours"
    t.string  "website_url"
    t.string  "google_maps_url"
  end

  add_index "venues", ["city_id"], name: "index_venues_on_city_id"

end
