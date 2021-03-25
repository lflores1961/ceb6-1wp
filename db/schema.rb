# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_24_220024) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "birth_city"
    t.string "birth_state"
    t.date "birth_date"
    t.string "address_street"
    t.string "address_number"
    t.string "address_complex"
    t.string "address_cp"
    t.string "address_phone"
    t.string "email"
    t.string "facebook"
    t.string "personal_phone"
    t.string "father_name"
    t.boolean "father_live"
    t.string "father_occupation"
    t.string "father_phone"
    t.string "mother_name"
    t.boolean "mother_live"
    t.string "mother_occupation"
    t.string "mother_phone"
    t.string "tutor_name"
    t.string "tutor_parenthood"
    t.string "previous_school"
    t.string "previous_school_type"
    t.string "scolarship"
    t.string "security_institution"
    t.text "medical_condition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
