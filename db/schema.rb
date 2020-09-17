# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_09_17_070121) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chosen_heros", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "hero_id", null: false
    t.string "name"
    t.integer "reputation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hero_id"], name: "index_chosen_heros_on_hero_id"
    t.index ["user_id"], name: "index_chosen_heros_on_user_id"
  end

  create_table "heros", force: :cascade do |t|
    t.string "main_attribute"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "title"
    t.string "description"
    t.date "date"
    t.boolean "completed?"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "current_device"
    t.string "current_playlist_id"
  end

  add_foreign_key "chosen_heros", "heros"
  add_foreign_key "chosen_heros", "users"
  add_foreign_key "tasks", "users"
end
