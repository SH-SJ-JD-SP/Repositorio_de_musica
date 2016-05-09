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

ActiveRecord::Schema.define(version: 20160509163038) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chords", force: :cascade do |t|
    t.string   "nombre_acorde"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "figurechords", force: :cascade do |t|
    t.string   "nombre_figura"
    t.integer  "chord_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "imagenFigura_file_name"
    t.string   "imagenFigura_content_type"
    t.integer  "imagenFigura_file_size"
    t.datetime "imagenFigura_updated_at"
  end

  add_index "figurechords", ["chord_id"], name: "index_figurechords_on_chord_id", using: :btree

  create_table "genres", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string   "titulo",        null: false
    t.string   "autor",         null: false
    t.string   "album"
    t.integer  "anio_creacion"
    t.text     "letra"
    t.integer  "genre_id"
    t.integer  "tuning_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "url_video"
  end

  add_index "songs", ["genre_id"], name: "index_songs_on_genre_id", using: :btree
  add_index "songs", ["tuning_id"], name: "index_songs_on_tuning_id", using: :btree

  create_table "tunings", force: :cascade do |t|
    t.string   "nombre_afinacion"
    t.string   "descripcion"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                                 null: false
    t.string   "encrypted_password",                    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",             default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "nombres",                               null: false
    t.string   "apellidos",                             null: false
    t.string   "apodo",                                 null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "imagenPerfil_file_name"
    t.string   "imagenPerfil_content_type"
    t.integer  "imagenPerfil_file_size"
    t.datetime "imagenPerfil_updated_at"
    t.integer  "role",                      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "figurechords", "chords"
  add_foreign_key "songs", "genres"
  add_foreign_key "songs", "tunings"
end
