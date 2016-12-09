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

ActiveRecord::Schema.define(:version => 20161207094859) do

  create_table "boards", :force => true do |t|
    t.text     "squares"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "current_game_plays", :force => true do |t|
    t.integer  "game_id"
    t.integer  "board_id"
    t.integer  "current_player", :default => 1
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "current_game_plays_users", :id => false, :force => true do |t|
    t.integer "current_game_play_id"
    t.integer "user_id"
  end

  create_table "games", :force => true do |t|
    t.integer  "state",      :limit => 5, :default => 0
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  create_table "games_users", :id => false, :force => true do |t|
    t.integer "game_id"
    t.integer "user_id"
  end

  create_table "played_games", :force => true do |t|
    t.integer  "game_id"
    t.integer  "result"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "player_played_game_details", :force => true do |t|
    t.integer  "played_game_id"
    t.integer  "player_id"
    t.integer  "earned_points"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_admin",        :default => false
    t.string   "remember_token"
    t.integer  "rating"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
