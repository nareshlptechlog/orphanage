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

ActiveRecord::Schema.define(version: 20151026061000) do

  create_table "people", force: :cascade do |t|
    t.string   "camp_at",                         limit: 100
    t.datetime "camp_on_date"
    t.integer  "registration_no",                 limit: 4
    t.datetime "registration_date"
    t.string   "name",                            limit: 45
    t.datetime "date_of_birth"
    t.integer  "age",                             limit: 4
    t.string   "sex",                             limit: 10
    t.string   "father_or_husband_name",          limit: 45
    t.string   "street",                          limit: 45
    t.string   "town_or_village_or_city",         limit: 45
    t.string   "taluk",                           limit: 45
    t.string   "district",                        limit: 45
    t.string   "state",                           limit: 45
    t.string   "diagnosis",                       limit: 300
    t.string   "advise_or_prescription",          limit: 300
    t.string   "referred_to",                     limit: 45
    t.integer  "annual_income",                   limit: 4
    t.string   "caste",                           limit: 45
    t.string   "occupation",                      limit: 45
    t.string   "disability_nature",               limit: 100
    t.integer  "disability_percentage",           limit: 4
    t.string   "identification_mark",             limit: 100
    t.string   "aids_or_appliances",              limit: 100
    t.integer  "for_excel_no_of_items",           limit: 4
    t.datetime "for_excel_date_of_issue"
    t.decimal  "for_excel_actual_cost",                       precision: 10, scale: 2
    t.decimal  "for_excel_total_assistance_cost",             precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registration_forms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",           limit: 100
    t.string   "encrypted_password", limit: 200
    t.string   "salt",               limit: 200
    t.string   "password",           limit: 45
    t.datetime "created_at"
    t.string   "updated_at",         limit: 45
  end

  add_index "users", ["username"], name: "username_UNIQUE", unique: true, using: :btree

  create_table "workshops", force: :cascade do |t|
    t.integer  "person_id",               limit: 4
    t.datetime "date_of_issue"
    t.integer  "no_of_item",              limit: 4
    t.decimal  "actual_cost",                       precision: 10, scale: 2
    t.decimal  "total_assistance_amount",           precision: 10, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
