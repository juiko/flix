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

ActiveRecord::Schema.define(version: 20160425202742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capitulos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "mail"
    t.string   "telefono"
    t.string   "nombre"
    t.string   "contraseña"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contrata", force: :cascade do |t|
    t.date     "fecha"
    t.date     "fecha_vencimiento"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "generos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peliculas", force: :cascade do |t|
    t.date     "fecha"
    t.string   "sinopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pgeneros", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "s_generos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.string   "sinopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suscripcions", force: :cascade do |t|
    t.string   "nombre"
    t.string   "precio"
    t.string   "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "temporadas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nick"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ve_peliculas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ve_series", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
