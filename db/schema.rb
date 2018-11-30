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

ActiveRecord::Schema.define(version: 2018_11_30_134018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "allergies", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ingredient_id"
    t.bigint "user_id"
    t.index ["ingredient_id"], name: "index_allergies_on_ingredient_id"
    t.index ["user_id"], name: "index_allergies_on_user_id"
  end

  create_table "dislikes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ingredient_id"
    t.bigint "user_id"
    t.index ["ingredient_id"], name: "index_dislikes_on_ingredient_id"
    t.index ["user_id"], name: "index_dislikes_on_user_id"
  end

  create_table "doses", force: :cascade do |t|
    t.bigint "smoothie_id"
    t.bigint "ingredient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unit", default: "g"
    t.integer "value"
    t.index ["ingredient_id"], name: "index_doses_on_ingredient_id"
    t.index ["smoothie_id"], name: "index_doses_on_smoothie_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.string "name"
    t.integer "calories"
    t.integer "sugar"
    t.integer "carb"
    t.integer "fat"
    t.integer "protein"
    t.integer "fiber"
    t.integer "minerals"
    t.boolean "liquid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "likes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ingredient_id"
    t.bigint "user_id"
    t.index ["ingredient_id"], name: "index_likes_on_ingredient_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "smoothie_id"
    t.integer "smoothie_quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["smoothie_id"], name: "index_order_items_on_smoothie_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "subtotal"
    t.integer "total"
    t.integer "delivery_fee"
    t.integer "tip"
    t.string "delivery_address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "payed", default: false
    t.boolean "delivered", default: false
    t.boolean "completed", default: false, null: false
    t.date "delivery_date"
    t.string "delivery_time_period"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "smoothies", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.string "description"
    t.string "nutrition_facts"
    t.string "benefits"
    t.string "preparation_instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "photo"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "delivery_address"
    t.integer "age"
    t.integer "weight"
    t.integer "height"
    t.string "gender"
    t.string "goal"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "allergies", "ingredients"
  add_foreign_key "allergies", "users"
  add_foreign_key "dislikes", "ingredients"
  add_foreign_key "dislikes", "users"
  add_foreign_key "doses", "ingredients"
  add_foreign_key "doses", "smoothies", column: "smoothie_id"
  add_foreign_key "likes", "ingredients"
  add_foreign_key "likes", "users"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "smoothies", column: "smoothie_id"
  add_foreign_key "orders", "users"
end
