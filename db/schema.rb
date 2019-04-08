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

ActiveRecord::Schema.define(version: 2019_04_08_074853) do

  create_table "admissions", force: :cascade do |t|
    t.datetime "moment", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "allergies", force: :cascade do |t|
    t.text "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diagnoses", force: :cascade do |t|
    t.string "coding_system"
    t.string "code", null: false
    t.text "description"
    t.string "type", default: "Diagnosis", null: false
    t.string "diagnosable_type"
    t.integer "diagnosable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diagnosable_type", "diagnosable_id"], name: "index_diagnoses_on_diagnosable_type_and_diagnosable_id"
  end

  create_table "diagnostic_procedures", force: :cascade do |t|
    t.text "description", null: false
    t.datetime "moment", null: false
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_diagnostic_procedures_on_patient_id"
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "medication_orders", force: :cascade do |t|
    t.string "name", null: false
    t.decimal "dosage", null: false
    t.text "necessity", null: false
    t.integer "unit", default: 0, null: false
    t.integer "route", default: 0, null: false
    t.integer "order_frequency_id"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_frequency_id"], name: "index_medication_orders_on_order_frequency_id"
    t.index ["patient_id"], name: "index_medication_orders_on_patient_id"
  end

  create_table "observations", force: :cascade do |t|
    t.text "description", null: false
    t.datetime "moment", null: false
    t.integer "admission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admission_id"], name: "index_observations_on_admission_id"
  end

  create_table "order_frequencies", force: :cascade do |t|
    t.string "value", null: false
    t.integer "unit", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_allergies", force: :cascade do |t|
    t.integer "patient_id"
    t.integer "allergy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["allergy_id"], name: "index_patient_allergies_on_allergy_id"
    t.index ["patient_id"], name: "index_patient_allergies_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "middle_name"
    t.string "last_name", null: false
    t.string "mr"
    t.datetime "dob"
    t.integer "gender", default: 0, null: false
    t.integer "facility_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "admission_id"
    t.index ["admission_id"], name: "index_patients_on_admission_id"
    t.index ["facility_id"], name: "index_patients_on_facility_id"
  end

  create_table "symptoms", force: :cascade do |t|
    t.text "description", null: false
    t.integer "admission_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["admission_id"], name: "index_symptoms_on_admission_id"
  end

  create_table "treatments", force: :cascade do |t|
    t.text "description"
    t.text "necessity"
    t.integer "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_treatments_on_patient_id"
  end

end
