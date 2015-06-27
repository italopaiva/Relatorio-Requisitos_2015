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

ActiveRecord::Schema.define(version: 20150627043642) do

  create_table "drivers", force: :cascade do |t|
    t.string   "driver_id"
    t.string   "driver_license"
    t.integer  "has_course"
    t.integer  "course_year"
    t.string   "license_expiration"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "driver_patent"
    t.string   "driver_name"
    t.integer  "driver_cnh"
  end

  create_table "patents", force: :cascade do |t|
    t.integer  "patent_id"
    t.string   "patent_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_name"
    t.string   "user_login"
    t.string   "user_password"
    t.string   "user_patent"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "vehicle_types", force: :cascade do |t|
    t.string   "type_name"
    t.string   "type_prefix"
    t.string   "fuel_type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.integer  "vehicle_id"
    t.string   "vehicle_number"
    t.integer  "vehicle_type"
    t.string   "brand"
    t.string   "model"
    t.string   "plaque"
    t.string   "chassi"
    t.string   "status"
    t.string   "responsible"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
