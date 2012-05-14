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

ActiveRecord::Schema.define(:version => 20120511173520) do

  create_table "bullet_types", :force => true do |t|
    t.string   "name",       :null => false
    t.string   "acronym",    :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bullets", :force => true do |t|
    t.integer  "manufacturer_id",                               :null => false
    t.integer  "caliber_id",                                    :null => false
    t.integer  "bullet_type_id",                                :null => false
    t.integer  "weight",                                        :null => false
    t.decimal  "diameter",        :precision => 4, :scale => 3, :null => false
    t.string   "name"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "bullets", ["bullet_type_id"], :name => "index_bullets_on_bullet_type_id"
  add_index "bullets", ["caliber_id"], :name => "index_bullets_on_caliber_id"
  add_index "bullets", ["manufacturer_id"], :name => "index_bullets_on_manufacturer_id"

  create_table "calibers", :force => true do |t|
    t.string   "name",         :null => false
    t.integer  "load_type_id", :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "calibers", ["load_type_id"], :name => "index_calibers_on_load_type_id"

  create_table "load_types", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "manufacturers", :force => true do |t|
    t.string   "name",                         :null => false
    t.string   "abbreviation", :default => "", :null => false
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "primer_sizes", :force => true do |t|
    t.string   "name",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "primers", :force => true do |t|
    t.string   "name",            :null => false
    t.integer  "manufacturer_id", :null => false
    t.integer  "primer_size_id",  :null => false
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "primers", ["manufacturer_id"], :name => "index_primers_on_manufacturer_id"
  add_index "primers", ["primer_size_id"], :name => "index_primers_on_primer_size_id"

end
