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

ActiveRecord::Schema.define(version: 20160317232605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: :cascade do |t|
    t.string   "country"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries_vaccinations", id: false, force: :cascade do |t|
    t.integer "country_id",     null: false
    t.integer "vaccination_id", null: false
  end

  add_index "countries_vaccinations", ["country_id", "vaccination_id"], name: "index_countries_vaccinations_on_country_id_and_vaccination_id", using: :btree
  add_index "countries_vaccinations", ["vaccination_id", "country_id"], name: "index_countries_vaccinations_on_vaccination_id_and_country_id", using: :btree

  create_table "histories", force: :cascade do |t|
    t.date     "date_given"
    t.text     "clinic_name"
    t.date     "expiry_date"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "user_id"
    t.integer  "vaccination_id"
  end

  add_index "histories", ["user_id"], name: "index_histories_on_user_id", using: :btree
  add_index "histories", ["vaccination_id"], name: "index_histories_on_vaccination_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "vaccinations", force: :cascade do |t|
    t.text     "science_name"
    t.text     "commercial_name"
    t.text     "pharmaceutical_form"
    t.string   "presentation"
    t.integer  "no_of_doses"
    t.text     "manufacturer"
    t.text     "responsible_nra"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "country_id"
  end

  add_index "vaccinations", ["country_id"], name: "index_vaccinations_on_country_id", using: :btree

  add_foreign_key "histories", "users"
  add_foreign_key "histories", "vaccinations"
  add_foreign_key "vaccinations", "countries"
end
