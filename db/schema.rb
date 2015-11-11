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

ActiveRecord::Schema.define(version: 20151111133356) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consultations", force: :cascade do |t|
    t.string   "name"
    t.string   "pain_site"
    t.string   "pain_note"
    t.integer  "age"
    t.string   "location"
    t.string   "examination_notes"
    t.date     "date"
    t.integer  "patient_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["patient_id"], name: "index_consultations_on_patient_id", using: :btree
  end

  create_table "patients", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "gender"
    t.date     "date_birth"
    t.string   "country"
    t.string   "city"
    t.string   "street"
    t.string   "title"
    t.string   "color"
    t.string   "url"
    t.string   "blog"
    t.integer  "height"
    t.integer  "weight"
    t.string   "email"
    t.integer  "frequence"
    t.integer  "money"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "consultations", "patients"
end
