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

ActiveRecord::Schema.define(version: 20160922215942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.integer  "phone"
    t.boolean  "admin"
  end

  add_index "clients", ["email"], name: "index_clients_on_email", unique: true, using: :btree
  add_index "clients", ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true, using: :btree

  create_table "episodes", force: :cascade do |t|
    t.integer  "season_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "episodes", ["season_id"], name: "index_episodes_on_season_id", using: :btree

  create_table "episodes_users", id: false, force: :cascade do |t|
    t.integer "episode_id"
    t.integer "user_id"
  end

  add_index "episodes_users", ["episode_id"], name: "index_episodes_users_on_episode_id", using: :btree
  add_index "episodes_users", ["user_id"], name: "index_episodes_users_on_user_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_movies", id: false, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "genre_id"
  end

  add_index "genres_movies", ["genre_id"], name: "index_genres_movies_on_genre_id", using: :btree
  add_index "genres_movies", ["movie_id"], name: "index_genres_movies_on_movie_id", using: :btree

  create_table "genres_shows", id: false, force: :cascade do |t|
    t.integer "show_id"
    t.integer "genre_id"
  end

  add_index "genres_shows", ["genre_id"], name: "index_genres_shows_on_genre_id", using: :btree
  add_index "genres_shows", ["show_id"], name: "index_genres_shows_on_show_id", using: :btree

  create_table "movie_votes", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rating"
  end

  add_index "movie_votes", ["movie_id"], name: "index_movie_votes_on_movie_id", using: :btree
  add_index "movie_votes", ["user_id"], name: "index_movie_votes_on_user_id", using: :btree

  create_table "movies", force: :cascade do |t|
    t.string   "title"
    t.text     "synopsis"
    t.date     "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "movies_users", id: false, force: :cascade do |t|
    t.integer "movie_id"
    t.integer "user_id"
  end

  add_index "movies_users", ["movie_id"], name: "index_movies_users_on_movie_id", using: :btree
  add_index "movies_users", ["user_id"], name: "index_movies_users_on_user_id", using: :btree

  create_table "seasons", force: :cascade do |t|
    t.integer  "number"
    t.integer  "show_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "seasons", ["show_id"], name: "index_seasons_on_show_id", using: :btree

  create_table "show_votes", force: :cascade do |t|
    t.integer  "show_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rating"
  end

  add_index "show_votes", ["show_id"], name: "index_show_votes_on_show_id", using: :btree
  add_index "show_votes", ["user_id"], name: "index_show_votes_on_user_id", using: :btree

  create_table "shows", force: :cascade do |t|
    t.string   "title"
    t.text     "synopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shows_users", id: false, force: :cascade do |t|
    t.integer "show_id"
    t.integer "user_id"
  end

  add_index "shows_users", ["show_id"], name: "index_shows_users_on_show_id", using: :btree
  add_index "shows_users", ["user_id"], name: "index_shows_users_on_user_id", using: :btree

  create_table "suscriptions", force: :cascade do |t|
    t.integer  "price"
    t.integer  "duration"
    t.datetime "date"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "suscriptions", ["client_id"], name: "index_suscriptions_on_client_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["client_id"], name: "index_users_on_client_id", using: :btree

  add_foreign_key "episodes", "seasons"
  add_foreign_key "movie_votes", "movies"
  add_foreign_key "movie_votes", "users"
  add_foreign_key "seasons", "shows"
  add_foreign_key "show_votes", "shows"
  add_foreign_key "show_votes", "users"
  add_foreign_key "suscriptions", "clients"
  add_foreign_key "users", "clients"
end
