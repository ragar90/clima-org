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

ActiveRecord::Schema.define(version: 20140208165056) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.integer  "result_id"
    t.integer  "question_id"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.integer  "city_id"
    t.integer  "state_id"
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demographic_settings", force: true do |t|
    t.integer  "research_id"
    t.integer  "demographic_variable_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demographic_values", force: true do |t|
    t.integer  "demographic_variable_id"
    t.integer  "result_id"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "demographic_variables", force: true do |t|
    t.string   "name"
    t.boolean  "is_default"
    t.string   "display_values"
    t.string   "accepted_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dimension_settings", force: true do |t|
    t.integer  "research_id"
    t.integer  "dimension_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dimensions", force: true do |t|
    t.string   "name"
    t.boolean  "is_default"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "question_settings", force: true do |t|
    t.integer  "research_id"
    t.integer  "question_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.string   "description"
    t.boolean  "is_default"
    t.integer  "dimension_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "research_id"
    t.integer  "ordinal"
  end

  create_table "report_filters", force: true do |t|
    t.integer  "report_id"
    t.integer  "research_id"
    t.string   "filtrable_type"
    t.integer  "filtrable_id"
    t.string   "filtrable_value"
    t.string   "demographic_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.string   "legend"
    t.integer  "research_id"
    t.string   "chart_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "research_applications", force: true do |t|
    t.integer  "research_id"
    t.date     "starts_on"
    t.date     "ends_on"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_conclude", default: false
  end

  create_table "researches", force: true do |t|
    t.string   "organization_name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "state",             default: 0
    t.boolean  "is_conclude",       default: false
    t.integer  "user_id"
  end

  create_table "results", force: true do |t|
    t.integer  "research_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "correlative"
    t.integer  "research_application_id"
  end

  create_table "users", force: true do |t|
    t.string   "avatar"
    t.string   "name"
    t.string   "lastname"
    t.integer  "company_id"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
