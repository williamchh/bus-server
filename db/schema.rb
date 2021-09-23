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

ActiveRecord::Schema.define(version: 2021_09_22_114443) do

  create_table "bus_lines", force: :cascade do |t|
    t.integer "lineNumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "busRoutes"
  end

  create_table "bus_routes", force: :cascade do |t|
    t.string "routeName"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "stops"
  end

  create_table "buses", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "lineNumber"
    t.string "route"
    t.integer "time_schedules_id"
    t.index ["time_schedules_id"], name: "index_buses_on_time_schedules_id"
  end

  create_table "stops", force: :cascade do |t|
    t.string "code"
    t.integer "sequence"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "time_schedules", force: :cascade do |t|
    t.integer "arriveHours"
    t.integer "arriveMinutes"
    t.string "firstStopCode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "lineNumber"
    t.string "routeName"
  end

end
