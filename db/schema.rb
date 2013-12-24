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

ActiveRecord::Schema.define(version: 20131224044400) do

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.float    "longitude"
    t.float    "latitude"
    t.float    "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "reference"
    t.string   "device_id"
    t.string   "device_description"
  end

  add_index "restaurants", ["latitude"], name: "index_restaurants_on_latitude"
  add_index "restaurants", ["longitude"], name: "index_restaurants_on_longitude"
  add_index "restaurants", ["name"], name: "index_restaurants_on_name"
  add_index "restaurants", ["rating"], name: "index_restaurants_on_rating"
  add_index "restaurants", ["reference"], name: "index_restaurants_on_reference", unique: true

end
