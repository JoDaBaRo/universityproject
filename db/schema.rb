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

ActiveRecord::Schema.define(version: 2018_11_23_224435) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_customers_on_person_id"
  end

  create_table "licence_types", force: :cascade do |t|
    t.string "allowed_vehicules", null: false
    t.string "category", null: false
    t.string "service_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licences", force: :cascade do |t|
    t.string "description", default: "", null: false
    t.integer "licence_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["licence_type_id"], name: "index_licences_on_licence_type_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name", null: false
    t.string "last_name", null: false
    t.string "address", null: false
    t.string "phone_number", default: "", null: false
    t.string "id_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_number"], name: "index_people_on_id_number", unique: true
  end

  create_table "teachers", force: :cascade do |t|
    t.string "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_teachers_on_person_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_users_on_unlock_token", unique: true
  end

end
