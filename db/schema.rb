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

  create_table "bookings", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "offering_id"
    t.datetime "linecut_date_time"
    t.datetime "booking_date_time"
    t.integer  "linecut_price"
  end

  add_index "bookings", ["offering_id"], name: "index_bookings_on_offering_id"
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id"

  create_table "offerings", force: :cascade do |t|
    t.integer "venue_id"
    t.string  "day_of_week"
    t.string  "opening_hours"
    t.string  "specials"
    t.integer "base_price_linecut"
    t.integer "price_increments"
  end

  add_index "offerings", ["venue_id"], name: "index_offerings_on_venue_id"

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
    t.string "first_name"
    t.string "last_name"
    t.string "birthday"
    t.string "gender"
    t.string "street_number"
    t.string "street"
    t.string "zip_code"
    t.string "city"
    t.string "state"
    t.string "credit_card_info"
    t.string "paypal_email"
  end

  create_table "venues", force: :cascade do |t|
    t.string "name"
    t.string "street_number"
    t.string "street"
    t.string "zip_code"
    t.string "neighborhood"
    t.string "city"
    t.string "state"
    t.string "latitude"
    t.string "longitude"
    t.binary "picture"
    t.text   "dress_code"
    t.string "website_url"
    t.string "google_maps_url"
  end

end
