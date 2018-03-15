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

ActiveRecord::Schema.define(version: 20180313193919) do

  create_table "application_records", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "places", force: :cascade do |t|
    t.string   "title"
    t.string   "business"
    t.text     "description"
    t.string   "lat"
    t.string   "lng"
    t.integer  "upvote"
    t.integer  "downvote"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "places_users", id: false, force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "place_id", null: false
  end

  add_index "places_users", ["place_id", "user_id"], name: "index_places_users_on_place_id_and_user_id"
  add_index "places_users", ["user_id", "place_id"], name: "index_places_users_on_user_id_and_place_id"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_places", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "place_id"
  end

  add_index "users_places", ["place_id"], name: "index_users_places_on_place_id"
  add_index "users_places", ["user_id"], name: "index_users_places_on_user_id"

end
