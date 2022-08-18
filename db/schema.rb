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

ActiveRecord::Schema[7.0].define(version: 2022_08_16_171851) do
  create_table "customers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age"
    t.string "email_id", null: false
    t.integer "phone_no", null: false
    t.string "sex"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name", null: false
    t.string "batch", null: false
    t.string "p_type", null: false
    t.string "brand", null: false
    t.float "price", null: false
    t.integer "stock", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "product_id", null: false
    t.integer "quantity", null: false
    t.datetime "date_and_time"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_purchases_on_customer_id"
    t.index ["product_id"], name: "index_purchases_on_product_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "employee_id"
    t.string "name", null: false
    t.string "email_id", null: false
    t.string "password", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "purchases", "customers"
  add_foreign_key "purchases", "products"
end
