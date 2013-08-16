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

ActiveRecord::Schema.define(:version => 20130809020655) do

  create_table "battles", :force => true do |t|
    t.integer  "trainer_id"
    t.integer  "enemy_id"
    t.integer  "turns"
    t.string   "complete"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pokemons", :force => true do |t|
    t.string   "name"
    t.integer  "level"
    t.string   "type1"
    t.string   "type2"
    t.string   "move1"
    t.string   "move2"
    t.integer  "hp"
    t.integer  "totalhp"
    t.integer  "trainer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "pokemons", ["trainer_id"], :name => "index_pokemons_on_trainer_id"

  create_table "trainers", :force => true do |t|
    t.integer  "active_pokemon_id"
    t.integer  "money"
    t.string   "name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
