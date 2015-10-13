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

ActiveRecord::Schema.define(version: 20151013225439) do

  create_table "acceptable_incompletes", force: :cascade do |t|
    t.integer  "offer_id"
    t.integer  "tradeable_item_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "acceptable_incompletes", ["offer_id"], name: "index_acceptable_incompletes_on_offer_id"
  add_index "acceptable_incompletes", ["tradeable_item_id"], name: "index_acceptable_incompletes_on_tradeable_item_id"

  create_table "catalog_items", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer  "trader_id"
    t.integer  "tradeable_item_id"
    t.integer  "catalog_item_id"
    t.integer  "minimum_condition"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "offers", ["catalog_item_id"], name: "index_offers_on_catalog_item_id"
  add_index "offers", ["tradeable_item_id"], name: "index_offers_on_tradeable_item_id"
  add_index "offers", ["trader_id"], name: "index_offers_on_trader_id"

  create_table "tradeable_items", force: :cascade do |t|
    t.integer  "catalog_item_id"
    t.integer  "trader_id"
    t.integer  "condition"
    t.text     "description"
    t.boolean  "incomplete"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "tradeable_items", ["catalog_item_id"], name: "index_tradeable_items_on_catalog_item_id"
  add_index "tradeable_items", ["trader_id"], name: "index_tradeable_items_on_trader_id"

  create_table "traders", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
