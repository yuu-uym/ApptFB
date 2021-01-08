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

ActiveRecord::Schema.define(version: 2021_01_08_090529) do

  create_table "appointments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "company", null: false
    t.date "appt_date", null: false
    t.integer "result_id"
    t.integer "score"
    t.integer "point1"
    t.integer "point2"
    t.integer "point3"
    t.integer "point4"
    t.integer "point5"
    t.integer "point6"
    t.integer "point7"
    t.integer "point8"
    t.integer "point9"
    t.integer "point10"
    t.integer "point11"
    t.integer "point12"
    t.integer "point13"
    t.integer "point14"
    t.integer "point15"
    t.integer "point16"
    t.integer "point17"
    t.integer "point18"
    t.integer "point19"
    t.integer "point20"
    t.bigint "user_id"
    t.bigint "check_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "comment"
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

  create_table "evaluations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "point1"
    t.integer "point2"
    t.integer "point3"
    t.integer "point4"
    t.integer "point5"
    t.integer "point6"
    t.integer "point7"
    t.integer "point8"
    t.integer "point9"
    t.integer "point10"
    t.integer "point11"
    t.integer "point12"
    t.integer "point13"
    t.integer "point14"
    t.integer "point15"
    t.integer "point16"
    t.integer "point17"
    t.integer "point18"
    t.integer "point19"
    t.integer "point20"
    t.bigint "user_id"
    t.bigint "appointment_id"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.integer "joined", null: false
    t.boolean "admin", default: false, null: false
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

  add_foreign_key "checks", "users"
end
