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

ActiveRecord::Schema.define(version: 20160519210442) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_items", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "item_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "categories_items", ["category_id"], name: "index_categories_items_on_category_id", using: :btree
  add_index "categories_items", ["item_id"], name: "index_categories_items_on_item_id", using: :btree

  create_table "defaults", force: :cascade do |t|
    t.string   "name"
    t.float    "restock_amount"
    t.float    "max_amount_sofar"
    t.integer  "fresh_duration"
    t.integer  "avg_use_duration"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "fresh_duration"
    t.datetime "exp_date"
    t.integer  "avg_use_duration"
    t.datetime "use_date"
    t.float    "restock_amount"
    t.float    "amount_left"
    t.string   "img_url"
    t.integer  "default_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "user_id"
    t.float    "count"
    t.string   "factual_id"
    t.boolean  "is_favorite"
    t.string   "brand"
    t.boolean  "is_shopping_list"
  end

  add_index "items", ["default_id"], name: "index_items_on_default_id", using: :btree
  add_index "items", ["user_id"], name: "index_items_on_user_id", using: :btree

  create_table "list_items", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "list_items", ["user_id"], name: "index_list_items_on_user_id", using: :btree

  create_table "oauthusers", force: :cascade do |t|
    t.string   "provider"
    t.string   "provider_id"
    t.string   "provider_hash"
    t.string   "email"
    t.string   "name"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "name"
    t.string   "reset_code"
    t.datetime "expires_at"
    t.string   "provider_id"
    t.string   "provider_hash"
    t.string   "provider"
  end

  add_foreign_key "categories_items", "categories"
  add_foreign_key "categories_items", "items"
  add_foreign_key "favorites", "users"
  add_foreign_key "items", "defaults"
  add_foreign_key "items", "users"
end
