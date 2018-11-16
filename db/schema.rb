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

ActiveRecord::Schema.define(version: 2018_11_16_200450) do

  create_table "camp_members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "street"
    t.string "city"
    t.string "state", limit: 2
    t.string "zip", limit: 5
    t.string "phone_number", limit: 12
    t.date "dob"
    t.integer "age"
    t.string "email"
    t.boolean "paid"
    t.string "payment_type"
    t.date "entered_on"
    t.bigint "church_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["church_id"], name: "index_camp_members_on_church_id"
  end

  create_table "churches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "church_name"
    t.string "pastor_name"
    t.string "mens_leader"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emergency_contacts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number", limit: 12
    t.string "relationship"
    t.bigint "camp_member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_member_id"], name: "index_emergency_contacts_on_camp_member_id"
  end

  create_table "payment_informations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name_on_card"
    t.string "card_number"
    t.date "expiration_date"
    t.string "cvv", limit: 3
    t.decimal "amount_paid", precision: 10
    t.string "payment_type"
    t.bigint "camp_member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["camp_member_id"], name: "index_payment_informations_on_camp_member_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "camp_members", "churches"
  add_foreign_key "emergency_contacts", "camp_members"
  add_foreign_key "payment_informations", "camp_members"
end
