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

ActiveRecord::Schema.define(version: 2020_07_10_164814) do

  create_table "articles", force: :cascade do |t|
    t.string "source_name"
    t.string "author"
    t.string "title"
    t.text "description"
    t.string "url"
    t.string "urlToImage"
    t.datetime "publishedAt"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "articles_collections", id: false, force: :cascade do |t|
    t.integer "collection_id", null: false
    t.integer "article_id", null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "profile_articles", force: :cascade do |t|
    t.integer "article_id", null: false
    t.integer "profile_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["article_id"], name: "index_profile_articles_on_article_id"
    t.index ["profile_id"], name: "index_profile_articles_on_profile_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "profile_articles", "articles"
  add_foreign_key "profile_articles", "profiles"
end
