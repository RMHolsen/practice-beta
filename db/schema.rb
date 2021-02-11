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

ActiveRecord::Schema.define(version: 20210211220943) do

  create_table "artifacts", force: :cascade do |t|
    t.string "name"
    t.string "creator"
    t.string "power"
  end

  create_table "backgrounds", force: :cascade do |t|
    t.string "project"
    t.string "genre"
    t.string "support_type"
    t.string "file_location"
  end

  create_table "books", force: :cascade do |t|
    t.string  "title"
    t.string  "author"
    t.text    "summary"
    t.string  "edition"
    t.string  "press"
    t.boolean "own"
  end

  create_table "creatures", force: :cascade do |t|
    t.string "name"
    t.string "epithet"
    t.string "power"
    t.string "species"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
  end

  create_table "guilds", force: :cascade do |t|
    t.string  "name"
    t.string  "purpose"
    t.integer "membership"
  end

  create_table "projects", force: :cascade do |t|
    t.string  "name"
    t.string  "length"
    t.text    "summary"
    t.integer "word_count"
    t.integer "user_id"
    t.integer "genre_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "email_confirmation"
    t.string "password_digest"
  end

end
