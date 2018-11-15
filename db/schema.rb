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

ActiveRecord::Schema.define(version: 2018_11_15_103537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "spot_id"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.text "review"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["spot_id"], name: "index_bookings_on_spot_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "features", force: :cascade do |t|
    t.string "name"
    t.string "picto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spot_features", force: :cascade do |t|
    t.bigint "spot_id"
    t.bigint "features_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["features_id"], name: "index_spot_features_on_features_id"
    t.index ["spot_id"], name: "index_spot_features_on_spot_id"
  end

  create_table "spots", force: :cascade do |t|
    t.bigint "user_id"
    t.text "description"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.string "name"
    t.float "latitude"
    t.float "longitude"
    t.index ["user_id"], name: "index_spots_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "nickname"
    t.string "address"
    t.string "phone"
    t.text "bio"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "spots"
  add_foreign_key "bookings", "users"
  add_foreign_key "spot_features", "features", column: "features_id"
  add_foreign_key "spot_features", "spots"
  add_foreign_key "spots", "users"
end
