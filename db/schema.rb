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

ActiveRecord::Schema.define(version: 2021_08_19_125312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "gender", default: 0
    t.boolean "active", default: true
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.integer "year_published"
    t.text "annotation"
    t.integer "page"
    t.text "content"
    t.datetime "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "author_id"
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "cards", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "reader_id", null: false
    t.bigint "library_id", null: false
    t.index ["library_id"], name: "index_cards_on_library_id"
    t.index ["reader_id"], name: "index_cards_on_reader_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "libraries", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "schedule"
    t.bigint "telephone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reader_books", force: :cascade do |t|
    t.bigint "reader_id"
    t.bigint "book_id"
    t.datetime "planning_return_time", null: false
    t.datetime "returned_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_reader_books_on_book_id"
    t.index ["reader_id"], name: "index_reader_books_on_reader_id"
  end

  create_table "readers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.date "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "cards", "libraries"
  add_foreign_key "cards", "readers"
end
