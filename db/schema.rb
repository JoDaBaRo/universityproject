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

ActiveRecord::Schema.define(version: 2018_11_28_215147) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "class_teachers", force: :cascade do |t|
    t.integer "practical_class_id", null: false
    t.integer "teacher_category_id", null: false
    t.integer "vehicle_plate_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practical_class_id"], name: "index_class_teachers_on_practical_class_id"
    t.index ["teacher_category_id"], name: "index_class_teachers_on_teacher_category_id"
    t.index ["vehicle_plate_id"], name: "index_class_teachers_on_vehicle_plate_id"
  end

  create_table "control_student_tests", force: :cascade do |t|
    t.datetime "test_date", null: false
    t.float "test_qualification", null: false
    t.boolean "approve", null: false
    t.integer "control_test_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["control_test_id"], name: "index_control_student_tests_on_control_test_id"
    t.index ["student_id"], name: "index_control_student_tests_on_student_id"
  end

  create_table "control_tests", force: :cascade do |t|
    t.string "description", null: false
    t.integer "test_length", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cost_types", force: :cascade do |t|
    t.integer "general_cost_id", null: false
    t.integer "cost_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cost_id"], name: "index_cost_types_on_cost_id"
    t.index ["general_cost_id"], name: "index_cost_types_on_general_cost_id"
  end

  create_table "costs", force: :cascade do |t|
    t.decimal "total_value", null: false
    t.integer "student_id", null: false
    t.integer "practical_cost_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practical_cost_id"], name: "index_costs_on_practical_cost_id"
    t.index ["student_id"], name: "index_costs_on_student_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_customers_on_person_id"
  end

  create_table "general_costs", force: :cascade do |t|
    t.string "description", null: false
    t.decimal "value", default: "0.0", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "licence_types", force: :cascade do |t|
    t.string "allowed_vehicles", null: false
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

  create_table "practical_classes", force: :cascade do |t|
    t.string "description", null: false
    t.integer "class_length", null: false
    t.integer "licence_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["licence_id"], name: "index_practical_classes_on_licence_id"
  end

  create_table "practical_costs", force: :cascade do |t|
    t.string "description", null: false
    t.decimal "value", default: "0.0", null: false
    t.integer "licence_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["licence_id"], name: "index_practical_costs_on_licence_id"
  end

  create_table "practical_student_classes", force: :cascade do |t|
    t.text "student_performance", null: false
    t.datetime "class_date", null: false
    t.integer "student_id", null: false
    t.integer "practical_class_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practical_class_id"], name: "index_practical_student_classes_on_practical_class_id"
    t.index ["student_id"], name: "index_practical_student_classes_on_student_id"
  end

  create_table "student_advances", force: :cascade do |t|
    t.decimal "advance_value", null: false
    t.string "description", default: "", null: false
    t.datetime "advance_date", null: false
    t.integer "student_id", null: false
    t.integer "cost_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cost_id"], name: "index_student_advances_on_cost_id"
    t.index ["student_id"], name: "index_student_advances_on_student_id"
  end

  create_table "student_licences", force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "licence_id", null: false
    t.datetime "expedition_date", null: false
    t.datetime "expiration_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["licence_id"], name: "index_student_licences_on_licence_id"
    t.index ["student_id"], name: "index_student_licences_on_student_id"
  end

  create_table "student_tests", force: :cascade do |t|
    t.datetime "test_date", null: false
    t.float "test_qualification", null: false
    t.boolean "approve", null: false
    t.integer "test_id", null: false
    t.integer "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_student_tests_on_student_id"
    t.index ["test_id"], name: "index_student_tests_on_test_id"
  end

  create_table "students", force: :cascade do |t|
    t.datetime "enroll_date", null: false
    t.integer "person_id", null: false
    t.integer "licence_id", null: false
    t.integer "class_teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["class_teacher_id"], name: "index_students_on_class_teacher_id"
    t.index ["licence_id"], name: "index_students_on_licence_id"
    t.index ["person_id"], name: "index_students_on_person_id"
  end

  create_table "teacher_categories", force: :cascade do |t|
    t.integer "teacher_id", null: false
    t.integer "licence_type_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["licence_type_id"], name: "index_teacher_categories_on_licence_type_id"
    t.index ["teacher_id"], name: "index_teacher_categories_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "person_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["person_id"], name: "index_teachers_on_person_id"
  end

  create_table "teoric_classes", force: :cascade do |t|
    t.string "description", null: false
    t.integer "class_length", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "test_type", null: false
    t.integer "test_length", null: false
    t.decimal "test_value", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "theorical_student_classes", force: :cascade do |t|
    t.datetime "class_date", null: false
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
    t.integer "teoric_class_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_theorical_student_classes_on_student_id"
    t.index ["teacher_id"], name: "index_theorical_student_classes_on_teacher_id"
    t.index ["teoric_class_id"], name: "index_theorical_student_classes_on_teoric_class_id"
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

  create_table "vehicle_categories", force: :cascade do |t|
    t.string "description", null: false
    t.float "hourly_rate", null: false
    t.integer "licence_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["licence_id"], name: "index_vehicle_categories_on_licence_id"
  end

  create_table "vehicle_consumes", force: :cascade do |t|
    t.integer "kilometers_traveled", null: false
    t.integer "spent_gas", null: false
    t.string "damage_description", default: "", null: false
    t.integer "vehicle_plate_id", null: false
    t.integer "practical_student_class_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["practical_student_class_id"], name: "index_vehicle_consumes_on_practical_student_class_id"
    t.index ["vehicle_plate_id"], name: "index_vehicle_consumes_on_vehicle_plate_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "plate", null: false
    t.string "brand", default: "", null: false
    t.string "displacement", null: false
    t.string "name", default: "", null: false
    t.string "model_year", default: "", null: false
    t.integer "vehicle_category_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_category_id"], name: "index_vehicles_on_vehicle_category_id"
  end

end
