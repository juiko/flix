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

ActiveRecord::Schema.define(version: 20160814003638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "capitulos", force: :cascade do |t|
    t.string   "nombre"
    t.text     "sinopsis"
    t.integer  "numero"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "temporada_id"
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombre"
    t.string   "telefono"
    t.string   "password"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
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
  end

  create_table "compras", force: :cascade do |t|
    t.date     "fecha_compra"
    t.date     "fecha_vencimiento"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "cliente_id"
    t.integer  "suscripcion_id"
  end

  add_index "compras", ["cliente_id"], name: "index_compras_on_cliente_id", using: :btree
  add_index "compras", ["suscripcion_id"], name: "index_compras_on_suscripcion_id", using: :btree

  create_table "generos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "generos_peliculas", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "pelicula_id"
    t.integer  "genero_id"
  end

  add_index "generos_peliculas", ["genero_id"], name: "index_generos_peliculas_on_genero_id", using: :btree
  add_index "generos_peliculas", ["pelicula_id"], name: "index_generos_peliculas_on_pelicula_id", using: :btree

  create_table "generos_series", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "series_id"
    t.integer  "genero_id"
  end

  add_index "generos_series", ["genero_id"], name: "index_generos_series_on_genero_id", using: :btree
  add_index "generos_series", ["series_id"], name: "index_generos_series_on_series_id", using: :btree

  create_table "peliculas", force: :cascade do |t|
    t.string   "nombre"
    t.text     "sinopsis"
    t.date     "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peliculas_clientes", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "cliente_id"
    t.integer  "pelicula_id"
  end

  add_index "peliculas_clientes", ["cliente_id"], name: "index_peliculas_clientes_on_cliente_id", using: :btree
  add_index "peliculas_clientes", ["pelicula_id"], name: "index_peliculas_clientes_on_pelicula_id", using: :btree

  create_table "peliculas_usuarios", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "usuario_id"
    t.integer  "pelicula_id"
  end

  add_index "peliculas_usuarios", ["pelicula_id"], name: "index_peliculas_usuarios_on_pelicula_id", using: :btree
  add_index "peliculas_usuarios", ["usuario_id"], name: "index_peliculas_usuarios_on_usuario_id", using: :btree

  create_table "personas", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.string   "nombre"
    t.text     "sinopsis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series_clientes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cliente_id"
    t.integer  "series_id"
  end

  add_index "series_clientes", ["cliente_id"], name: "index_series_clientes_on_cliente_id", using: :btree
  add_index "series_clientes", ["series_id"], name: "index_series_clientes_on_series_id", using: :btree

  create_table "series_usuarios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "usuario_id"
    t.integer  "series_id"
  end

  add_index "series_usuarios", ["series_id"], name: "index_series_usuarios_on_series_id", using: :btree
  add_index "series_usuarios", ["usuario_id"], name: "index_series_usuarios_on_usuario_id", using: :btree

  create_table "suscripcions", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.text     "descripcion"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "duracion"
  end

  create_table "temporadas", force: :cascade do |t|
    t.integer  "numero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "series_id"
    t.integer  "serie_id"
  end

  add_index "temporadas", ["series_id"], name: "index_temporadas_on_series_id", using: :btree

  create_table "usuarios", force: :cascade do |t|
    t.string   "nick"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios_clientes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "cliente_id"
    t.integer  "usuario_id"
  end

  add_index "usuarios_clientes", ["cliente_id"], name: "index_usuarios_clientes_on_cliente_id", using: :btree
  add_index "usuarios_clientes", ["usuario_id"], name: "index_usuarios_clientes_on_usuario_id", using: :btree

  add_foreign_key "compras", "clientes"
  add_foreign_key "compras", "suscripcions"
  add_foreign_key "generos_peliculas", "generos"
  add_foreign_key "generos_peliculas", "peliculas"
  add_foreign_key "generos_series", "generos"
  add_foreign_key "generos_series", "series"
  add_foreign_key "peliculas_usuarios", "peliculas"
  add_foreign_key "peliculas_usuarios", "usuarios"
  add_foreign_key "series_usuarios", "series"
  add_foreign_key "series_usuarios", "usuarios"
  add_foreign_key "temporadas", "series"
  add_foreign_key "usuarios_clientes", "clientes"
  add_foreign_key "usuarios_clientes", "usuarios"
end
