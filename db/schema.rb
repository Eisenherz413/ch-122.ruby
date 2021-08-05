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

ActiveRecord::Schema.define(version: 2021_07_26_211240) do
  create_table "categories", force: :cascade do |t|
    t.integer "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "text"
    t.integer "user_id"
    t.decimal "stars"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "images", force: :cascade do |t|
    t.string "name"
    t.string "path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "issues", force: :cascade do |t|
    t.integer "category_id"
    t.integer "user_id"
    t.string "text"
    t.integer "status", default: 0
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.date "check_in"
    t.date "check_out"
    t.float "total_price"
    t.integer "room_id"
    t.integer "user_id"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "room_images", force: :cascade do |t|
    t.decimal "room_id"
    t.decimal "image_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "purpose"
  end

  create_table "room_services", force: :cascade do |t|
    t.integer "room_id"
    t.integer "service_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "capacity"
    t.float "price"
    t.string "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "title"
    t.string "slug"
    t.index ["id"], name: "rooms_id_uindex", unique: true
    t.index ["slug"], name: "index_rooms_on_slug", unique: true
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "icon_url"
  end

  create_table "users", force: :cascade do |t|
    t.string "full_name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "role"
    t.integer "status"
  end

  add_foreign_key "feedbacks", "users"
  add_foreign_key "issues", "categories"
  add_foreign_key "issues", "users"
  add_foreign_key "orders", "rooms"
  add_foreign_key "orders", "users"
  add_foreign_key "room_images", "images"
  add_foreign_key "room_images", "rooms"
  add_foreign_key "room_services", "rooms"
  add_foreign_key "room_services", "services"
end
