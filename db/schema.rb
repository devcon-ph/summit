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

ActiveRecord::Schema.define(version: 20141025084553) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news", force: true do |t|
    t.string   "title"
    t.string   "photo_url"
    t.integer  "news_category_id"
    t.text     "html_content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "news_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs", force: true do |t|
    t.datetime "start_at"
    t.string   "title"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "programs_speakers", force: true do |t|
    t.integer "program_id"
    t.integer "speaker_id"
  end

  create_table "speakers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "position"
    t.string   "company"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description",    default: ""
    t.string   "twitter_handle", default: ""
    t.string   "website",        default: ""
    t.string   "photo_url",      default: ""
  end

  create_table "sponsor_categories", force: true do |t|
    t.string   "name",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sponsors", force: true do |t|
    t.string   "name",                default: ""
    t.string   "photo_url",           default: ""
    t.integer  "sponsor_category_id"
    t.string   "website",             default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technologies", force: true do |t|
    t.string   "name",       default: ""
    t.string   "slug",       default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "technologies_users", force: true do |t|
    t.integer "technology_id"
    t.integer "user_id"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "authentication_token"
    t.string   "first_name",             default: ""
    t.string   "last_name",              default: ""
    t.string   "position",               default: ""
    t.string   "company",                default: ""
    t.string   "location",               default: ""
    t.text     "description",            default: ""
    t.string   "website",                default: ""
    t.string   "facebook_url",           default: ""
    t.string   "twitter_handle",         default: ""
    t.integer  "technology_id"
  end

  add_index "users", ["authentication_token"], name: "index_users_on_authentication_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
