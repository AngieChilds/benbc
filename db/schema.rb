# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131222222503) do

  create_table "apologetics", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.integer  "year"
    t.text     "more"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bookmarks", force: true do |t|
    t.text     "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "discipleships", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.integer  "year"
    t.text     "more"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evangelisms", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.integer  "year"
    t.text     "more"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "generals", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.integer  "year"
    t.text     "more"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "men", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.integer  "year"
    t.text     "more"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "postmodernisms", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.integer  "year"
    t.text     "more"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "singles", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.integer  "year"
    t.text     "more"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topic_articles", force: true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "women", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "publisher"
    t.integer  "year"
    t.text     "more"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
