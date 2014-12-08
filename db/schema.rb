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

ActiveRecord::Schema.define(version: 20141208180338) do

  create_table "businesses", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "interactions", force: true do |t|
    t.string   "description"
    t.integer  "interaction_id"
    t.string   "interaction_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "interactions", ["interaction_id", "interaction_type"], name: "index_interactions_on_interaction_id_and_interaction_type"

  create_table "people", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
