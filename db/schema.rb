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

ActiveRecord::Schema.define(version: 20160516194117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "amount_left"
    t.integer  "regular_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "items", ["regular_id"], name: "index_items_on_regular_id", using: :btree

  create_table "oauthusers", force: :cascade do |t|
    t.string   "provider"
    t.string   "provider_id"
    t.string   "provider_hash"
    t.string   "email"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "regulars", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.float    "restock_amount"
    t.datetime "exp_date"
    t.datetime "usage_date"
    t.boolean  "is_favorite"
    t.float    "max_ever_stocked"
    t.integer  "category_id"
    t.integer  "user_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "regulars", ["category_id"], name: "index_regulars_on_category_id", using: :btree
  add_index "regulars", ["user_id"], name: "index_regulars_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
  end

  add_foreign_key "items", "regulars"
  add_foreign_key "regulars", "categories"
  add_foreign_key "regulars", "users"
end
