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

ActiveRecord::Schema[7.0].define(version: 2023_12_13_171600) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "areas", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.date "date_established"
    t.string "seat"
    t.text "description"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_state_areas", force: :cascade do |t|
    t.bigint "member_state_id", null: false
    t.bigint "area_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["area_id"], name: "index_member_state_areas_on_area_id"
    t.index ["member_state_id"], name: "index_member_state_areas_on_member_state_id"
  end

  create_table "member_states", force: :cascade do |t|
    t.string "name"
    t.date "entry_date"
    t.string "capital"
    t.integer "population"
    t.integer "number_meps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "officials", force: :cascade do |t|
    t.string "name"
    t.string "place_of_birth"
    t.date "date_of_birth"
    t.string "position"
    t.string "affiliation"
    t.text "bio"
    t.string "website"
    t.bigint "institution_id"
    t.bigint "political_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_officials_on_institution_id"
    t.index ["political_group_id"], name: "index_officials_on_political_group_id"
  end

  create_table "political_groups", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.text "description"
    t.string "president"
    t.integer "current_meps"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "political_parties", force: :cascade do |t|
    t.string "name"
    t.bigint "political_group_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["political_group_id"], name: "index_political_parties_on_political_group_id"
  end

  create_table "treaties", force: :cascade do |t|
    t.string "name"
    t.date "date_of_signing"
    t.string "place_of_signing"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "member_state_areas", "areas"
  add_foreign_key "member_state_areas", "member_states"
  add_foreign_key "officials", "institutions"
  add_foreign_key "officials", "political_groups"
  add_foreign_key "political_parties", "political_groups"
end
