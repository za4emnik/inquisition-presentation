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

ActiveRecord::Schema.define(version: 2019_03_22_072052) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.string "login"
    t.string "email"
    t.string "posts_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email", "login"], name: "index_email_login"
    t.index ["email"], name: "index_authors_on_email"
    t.index ["login", "email"], name: "index_login_email"
    t.index ["login"], name: "index_authors_on_login"
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.integer "post_id"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.integer "author_id"
    t.integer "comments_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
