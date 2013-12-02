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

ActiveRecord::Schema.define(version: 20131201124818) do

  create_table "cars", force: true do |t|
    t.string   "name"
    t.integer  "seats"
    t.text     "avatar"
    t.string   "license"
    t.float    "longitude"
    t.float    "latitude"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cars", ["latitude"], name: "index_cars_on_latitude", using: :btree
  add_index "cars", ["longitude"], name: "index_cars_on_longitude", using: :btree
  add_index "cars", ["seats"], name: "index_cars_on_seats", using: :btree

  create_table "users", force: true do |t|
    t.string   "user_name"
    t.string   "password"
    t.string   "email"
    t.string   "about"
    t.string   "facebook_id"
    t.string   "facebook_token"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "midle_name"
    t.string   "last_name"
    t.text     "avatar"
    t.string   "country"
    t.datetime "date_of_birth"
    t.text     "phone",          limit: 255
    t.text     "access_token"
    t.text     "id_gcm"
    t.text     "device_token"
    t.text     "socket"
    t.float    "longitude"
    t.float    "latitude"
  end

  add_index "users", ["latitude"], name: "index_users_on_latitude", using: :btree
  add_index "users", ["longitude"], name: "index_users_on_longitude", using: :btree
  add_index "users", ["password"], name: "index_users_on_password", using: :btree
  add_index "users", ["user_name"], name: "index_users_on_user_name", using: :btree

end
