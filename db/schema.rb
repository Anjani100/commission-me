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

ActiveRecord::Schema.define(version: 20131117223404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arts", force: true do |t|
    t.string   "author_name"
    t.integer  "featured"
    t.text     "description"
    t.text     "tags"
    t.string   "location"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
  end

  create_table "commissions", force: true do |t|
    t.text     "request_form"
    t.text     "revision_request"
    t.time     "closed_date"
    t.text     "state"
    t.integer  "commissioner_id"
    t.integer  "artist_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "commission_request_data"
  end

  create_table "fake_users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.integer  "sender_id"
    t.integer  "recipient_id"
    t.boolean  "sender_deleted",    default: false
    t.boolean  "recipient_deleted", default: false
    t.string   "subject"
    t.text     "body"
    t.datetime "read_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.text     "commission_request_template"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree

end
