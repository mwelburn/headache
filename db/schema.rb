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

ActiveRecord::Schema.define(:version => 20111123053207) do

  create_table "causes", :force => true do |t|
    t.string   "description"
    t.boolean  "is_active",   :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "headaches", :force => true do |t|
    t.integer  "user_id",                                                :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "onset_time",          :default => '2011-11-22 02:20:55'
    t.time     "length"
    t.integer  "intensity"
    t.boolean  "similar_episodes"
    t.string   "notes"
    t.string   "cause_id"
    t.string   "existing_illness"
    t.string   "location_on_head"
    t.string   "course"
    t.string   "mitigating_factors"
    t.string   "quality"
    t.string   "associated_symptoms"
    t.string   "treatment"
    t.boolean  "is_active",           :default => true
  end

  create_table "headaches_causes", :id => false, :force => true do |t|
    t.integer "headache_id"
    t.integer "cause_id"
  end

  create_table "headaches_locations", :id => false, :force => true do |t|
    t.integer "headache_id"
    t.integer "location_id"
  end

  create_table "locations", :force => true do |t|
    t.string   "description"
    t.boolean  "is_active",   :default => true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "",   :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "",   :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "is_active",                             :default => true
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
