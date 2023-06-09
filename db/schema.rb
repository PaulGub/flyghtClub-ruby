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

ActiveRecord::Schema[7.0].define(version: 2023_05_22_101925) do
  create_table "bookings", force: :cascade do |t|
    t.integer "class_type"
    t.integer "passenger_number"
    t.string "code_pnr"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_pnr"], name: "index_bookings_on_code_pnr", unique: true
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "bookings_flights", id: false, force: :cascade do |t|
    t.integer "booking_id", null: false
    t.integer "flight_id", null: false
    t.index ["booking_id", "flight_id"], name: "index_bookings_flights_on_booking_id_and_flight_id"
    t.index ["flight_id", "booking_id"], name: "index_bookings_flights_on_flight_id_and_booking_id"
  end

  create_table "flights", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "number"
    t.string "departure_airport"
    t.string "arrival_airport"
    t.integer "business_class_seats"
    t.integer "economy_class_seats"
    t.datetime "departure_date"
    t.integer "duration"
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

  add_foreign_key "bookings", "users"
end
