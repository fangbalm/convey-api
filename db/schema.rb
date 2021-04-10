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

ActiveRecord::Schema.define(version: 2021_04_07_185302) do

  create_table "categories", force: :cascade do |t|
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "entries", force: :cascade do |t|
    t.integer "journal_id", null: false
    t.integer "prompt_id", null: false
    t.string "title"
    t.string "mood"
    t.text "content"
    t.datetime "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["journal_id"], name: "index_entries_on_journal_id"
    t.index ["prompt_id"], name: "index_entries_on_prompt_id"
  end

  create_table "journals", force: :cascade do |t|
    t.integer "user_id", null: false
    t.string "title"
    t.string "description"
    t.boolean "private"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_journals_on_user_id"
  end

  create_table "prompts", force: :cascade do |t|
    t.integer "user_id"
    t.integer "category_id", null: false
    t.string "prompt"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["category_id"], name: "index_prompts_on_category_id"
    t.index ["user_id"], name: "index_prompts_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "gender"
    t.string "ethnicity"
    t.boolean "lgbt_status"
    t.boolean "disability_status"
    t.boolean "immigration_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "entries", "journals"
  add_foreign_key "entries", "prompts"
  add_foreign_key "journals", "users"
  add_foreign_key "prompts", "categories"
  add_foreign_key "prompts", "users"
end
