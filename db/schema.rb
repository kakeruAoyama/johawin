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

ActiveRecord::Schema.define(version: 2020_06_01_183616) do

  create_table "my_evas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "question_01"
    t.integer "question_02"
    t.integer "question_03"
    t.integer "question_04"
    t.integer "question_05"
    t.integer "question_06"
    t.integer "question_07"
    t.integer "question_08"
    t.integer "question_09"
    t.integer "question_10"
    t.integer "question_11"
    t.integer "question_12"
    t.integer "question_13"
    t.integer "question_14"
    t.integer "question_15"
    t.integer "question_16"
    t.integer "question_17"
    t.integer "question_18"
    t.integer "question_19"
    t.integer "question_20"
    t.integer "question_21"
    t.integer "question_22"
    t.integer "question_23"
    t.integer "question_24"
    t.integer "question_25"
    t.integer "question_26"
    t.integer "question_27"
    t.integer "question_28"
    t.integer "question_29"
    t.integer "question_30"
    t.integer "question_31"
    t.integer "question_32"
    t.integer "question_33"
    t.integer "question_34"
    t.integer "question_35"
    t.integer "question_36"
    t.integer "question_37"
    t.integer "question_38"
    t.integer "question_39"
    t.integer "question_40"
    t.integer "question_41"
    t.integer "question_42"
    t.integer "question_43"
    t.integer "question_44"
    t.integer "question_45"
    t.integer "question_46"
    t.integer "evaluated_user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "oth_evas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "evaluated_user_id"
    t.string "evaluate_user_name"
    t.integer "question_01"
    t.integer "question_02"
    t.integer "question_03"
    t.integer "question_04"
    t.integer "question_05"
    t.integer "question_06"
    t.integer "question_07"
    t.integer "question_08"
    t.integer "question_09"
    t.integer "question_10"
    t.integer "question_11"
    t.integer "question_12"
    t.integer "question_13"
    t.integer "question_14"
    t.integer "question_15"
    t.integer "question_16"
    t.integer "question_17"
    t.integer "question_18"
    t.integer "question_19"
    t.integer "question_20"
    t.integer "question_21"
    t.integer "question_22"
    t.integer "question_23"
    t.integer "question_24"
    t.integer "question_25"
    t.integer "question_26"
    t.integer "question_27"
    t.integer "question_28"
    t.integer "question_29"
    t.integer "question_30"
    t.integer "question_31"
    t.integer "question_32"
    t.integer "question_33"
    t.integer "question_34"
    t.integer "question_35"
    t.integer "question_36"
    t.integer "question_37"
    t.integer "question_38"
    t.integer "question_39"
    t.integer "question_40"
    t.integer "question_41"
    t.integer "question_42"
    t.integer "question_43"
    t.integer "question_44"
    t.integer "question_45"
    t.integer "question_46"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "user_id", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "url_token"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["user_id"], name: "index_users_on_user_id", unique: true
  end

end
