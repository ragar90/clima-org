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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130118070951) do

  create_table "answers", :force => true do |t|
    t.integer  "result_id"
    t.integer  "question_id"
    t.integer  "value"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "demographic_settings", :force => true do |t|
    t.integer  "research_id"
    t.integer  "demographic_variable_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "demographic_values", :force => true do |t|
    t.integer  "demographi_variable_id"
    t.string   "result_id"
    t.string   "value"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "demographic_variables", :force => true do |t|
    t.string   "name"
    t.boolean  "is_default"
    t.string   "display_values"
    t.string   "accepted_value"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "dimension_settings", :force => true do |t|
    t.integer  "research_id"
    t.integer  "dimension_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "dimensions", :force => true do |t|
    t.string   "name"
    t.boolean  "is_default"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "question_settings", :force => true do |t|
    t.integer  "research_id"
    t.integer  "question_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "questions", :force => true do |t|
    t.string   "description"
    t.boolean  "is_default"
    t.integer  "dimension_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "researches", :force => true do |t|
    t.string   "company_name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "results", :force => true do |t|
    t.integer  "research_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end