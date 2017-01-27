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

ActiveRecord::Schema.define(version: 20170123073546) do

  create_table "customers", force: :cascade do |t|
    t.text     "cust_Name"
    t.text     "cust_Add"
    t.text     "cust_mobile"
    t.text     "cust_email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jobcards", force: :cascade do |t|
    t.text     "init_problems"
    t.integer  "estimated_cost"
    t.integer  "actual_cost"
    t.text     "techq_name"
    t.datetime "date_arrival"
    t.datetime "date_delivery"
    t.integer  "vehicle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "clutch_cabel",      default: false, null: false
    t.boolean  "accelrator_cabel",  default: false, null: false
    t.boolean  "choke_cabel",       default: false, null: false
    t.boolean  "break_liner_cabel", default: false, null: false
    t.boolean  "break_pads",        default: false, null: false
    t.boolean  "piston",            default: false, null: false
    t.boolean  "valves_set",        default: false, null: false
    t.boolean  "sterring_cone_set", default: false, null: false
    t.boolean  "paid_service",      default: false, null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.text     "vehicle_no"
    t.text     "Model_name"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
