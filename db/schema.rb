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

ActiveRecord::Schema.define(version: 2020_03_11_181411) do

  create_table "simulations", force: :cascade do |t|
    t.integer "amount_user"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "ddd_origin_user"
    t.integer "ddd_destiny_user"
    t.float "with_plan"
    t.float "without_plan"
  end

  create_table "taxes", force: :cascade do |t|
    t.integer "ddd_origin"
    t.integer "ddd_destiny"
    t.integer "amount_min"
    t.string "name_plan"
    t.float "price_plan"
    t.float "price_surplus"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
