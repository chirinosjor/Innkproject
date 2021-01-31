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

ActiveRecord::Schema.define(version: 20210131163915) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movie_rents", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_movie_rents_on_movie_id"
    t.index ["user_id"], name: "index_movie_rents_on_user_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.integer "runtime"
    t.integer "price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_movies_on_user_id"
  end

  create_table "series", force: :cascade do |t|
    t.string "title"
    t.string "genre"
    t.integer "seasons"
    t.integer "price"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_series_on_user_id"
  end

  create_table "series_rents", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "series_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["series_id"], name: "index_series_rents_on_series_id"
    t.index ["user_id"], name: "index_series_rents_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "rented_movies", default: 0, null: false
    t.integer "rented_series", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "movie_rents", "movies"
  add_foreign_key "movie_rents", "users"
  add_foreign_key "movies", "users"
  add_foreign_key "series", "users"
  add_foreign_key "series_rents", "series"
  add_foreign_key "series_rents", "users"
end
