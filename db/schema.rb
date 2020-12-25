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

ActiveRecord::Schema.define(version: 2020_12_25_033510) do

  create_table "appointment_checks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "appointment_id"
    t.bigint "check_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_appointment_checks_on_appointment_id"
    t.index ["check_id"], name: "index_appointment_checks_on_check_id"
  end

  create_table "appointments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "company", null: false
    t.date "appt_date", null: false
    t.integer "result_id"
    t.integer "score"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "check_id"
    t.index ["check_id"], name: "index_appointments_on_check_id"
    t.index ["user_id"], name: "index_appointments_on_user_id"
  end

  create_table "checks", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "title", null: false
    t.string "item1", null: false
    t.string "item2"
    t.string "item3"
    t.string "item4"
    t.string "item5"
    t.string "item6"
    t.string "item7"
    t.string "item8"
    t.string "item9"
    t.string "item10"
    t.string "item11"
    t.string "item12"
    t.string "item13"
    t.string "item14"
    t.string "item15"
    t.string "item16"
    t.string "item17"
    t.string "item18"
    t.string "item19"
    t.string "item20"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_checks_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "joined", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "appointment_checks", "appointments"
  add_foreign_key "appointment_checks", "checks"
  add_foreign_key "appointments", "checks"
  add_foreign_key "appointments", "users"
  add_foreign_key "checks", "users"
end
