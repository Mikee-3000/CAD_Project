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

ActiveRecord::Schema[7.0].define(version: 2023_12_12_193122) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "institutions", force: :cascade do |t|
    t.string "name"
    t.date "date_established"
    t.string "seat"
    t.text "description"
    t.string "website"
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
    t.bigint "institution_id", null: false
    t.bigint "political_group_id", null: false
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
    t.bigint "political_group_id", null: false
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

  add_foreign_key "officials", "institutions"
  add_foreign_key "officials", "political_groups"
  add_foreign_key "political_parties", "political_groups"
end
