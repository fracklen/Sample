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

ActiveRecord::Schema.define(:version => 20130328192417) do

  create_table "accounts", :force => true do |t|
    t.string   "username"
    t.datetime "invalidated_at"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
  end

  create_table "people", :force => true do |t|
    t.string   "name"
    t.date     "birthday"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wishes", :force => true do |t|
    t.string   "person_id"
    t.integer  "priority"
    t.string   "name"
    t.string   "note"
    t.datetime "cancelled_at"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

end
