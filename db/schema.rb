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

ActiveRecord::Schema.define(:version => 20150124095040) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.float    "balance"
    t.string   "account_type"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "transactions", :force => true do |t|
    t.string   "dir1"
    t.string   "dir2"
    t.float    "amount"
    t.text     "description"
    t.integer  "account1_id"
    t.integer  "account2_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "transactions", ["account1_id"], :name => "index_transactions_on_account1_id"
  add_index "transactions", ["account2_id"], :name => "index_transactions_on_account2_id"

end
