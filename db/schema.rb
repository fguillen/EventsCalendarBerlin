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

ActiveRecord::Schema.define(version: 2018_08_05_131933) do

  create_table "calendar_events", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "venue_id", null: false
    t.string "title", null: false
    t.datetime "date_time", null: false
    t.string "checksum", null: false
    t.string "url", null: false
    t.text "info"
    t.text "pics"
    t.string "address"
    t.integer "duration_minutes"
    t.decimal "price_euros", precision: 8, scale: 2
    t.text "tags"
    t.index ["checksum"], name: "index_calendar_events_on_checksum", unique: true
    t.index ["venue_id"], name: "index_calendar_events_on_venue_id"
  end

  create_table "venues", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "calendar_url", null: false
    t.string "scraper_module_name", null: false
  end

  add_foreign_key "calendar_events", "venues"
end
