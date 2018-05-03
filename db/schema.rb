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

ActiveRecord::Schema.define(version: 2018_05_03_113246) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "abouts", force: :cascade do |t|
    t.text "description"
    t.boolean "active"
    t.integer "created_by"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guests", force: :cascade do |t|
    t.string "guest_id"
    t.string "name"
    t.string "email"
    t.string "address"
    t.boolean "presence"
    t.string "note"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "wedding_id"
    t.index ["wedding_id"], name: "index_guests_on_wedding_id"
  end

  create_table "promos", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.date "promo_date_start"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "promo_date_end"
  end

  create_table "weddings", force: :cascade do |t|
    t.string "name_wedding"
    t.string "owner"
    t.string "location"
    t.date "event_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "pic_wedding_file_name"
    t.string "pic_wedding_content_type"
    t.integer "pic_wedding_file_size"
    t.datetime "pic_wedding_updated_at"
  end

end
