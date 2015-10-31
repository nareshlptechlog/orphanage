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

ActiveRecord::Schema.define(version: 20151029023533) do

  create_table "registration_forms", force: :cascade do |t|
    t.string   "camp_at",                 limit: 45
    t.datetime "camp_on_date"
    t.datetime "registration_date"
    t.string   "name",                    limit: 45
    t.datetime "date_of_birth"
    t.integer  "age",                     limit: 4
    t.string   "sex",                     limit: 45
    t.string   "father_or_husband_name",  limit: 45
    t.string   "street",                  limit: 45
    t.string   "town_or_village_or_city", limit: 45
    t.string   "taluk",                   limit: 45
    t.string   "district",                limit: 45
    t.string   "diagnosis",               limit: 300
    t.string   "advise_or_prescription",  limit: 300
    t.string   "referred_to",             limit: 45
    t.decimal  "monthly_income",                      precision: 10, scale: 2
    t.string   "caste",                   limit: 45
    t.string   "occupation",              limit: 45
    t.string   "disability_nature",       limit: 45
    t.integer  "disability_percentage",   limit: 4
    t.string   "aids_or_appliances",      limit: 100
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "state",                   limit: 45
    t.string   "identification_mark",     limit: 45
    t.integer  "registration_no",         limit: 8
    t.integer  "mobile_no",               limit: 8
    t.integer  "pincode",                 limit: 8
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",           limit: 45
    t.string   "encrypted_password", limit: 80
    t.string   "password",           limit: 45
    t.string   "salt",               limit: 45
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["username"], name: "username_UNIQUE", unique: true, using: :btree

  create_table "workshops", force: :cascade do |t|
    t.integer  "registration_form_id",    limit: 4
    t.datetime "created_at",                                                 null: false
    t.datetime "updated_at",                                                 null: false
    t.datetime "date_of_issue"
    t.integer  "no_of_item",              limit: 4
    t.decimal  "actual_cost",                       precision: 10, scale: 2
    t.decimal  "total_assistance_amount",           precision: 10, scale: 2
  end

  add_index "workshops", ["registration_form_id"], name: "index_workshops_on_registration_form_id", using: :btree

end
