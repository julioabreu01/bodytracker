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

ActiveRecord::Schema.define(version: 2018_11_06_153820) do

  create_table "installs", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_installs_on_email", unique: true
    t.index ["reset_password_token"], name: "index_installs_on_reset_password_token", unique: true
  end

  create_table "medidas", force: :cascade do |t|
    t.datetime "datahora"
    t.decimal "peso"
    t.decimal "bmi"
    t.integer "dci"
    t.integer "bmr"
    t.integer "idademetabolica"
    t.decimal "txliquido"
    t.integer "gordvisceral"
    t.integer "massaossea"
    t.decimal "txgordtotal"
    t.decimal "txgordbraesq"
    t.decimal "txgordbradir"
    t.decimal "txgordperesq"
    t.decimal "txgordperdir"
    t.decimal "txgordtronco"
    t.decimal "massamusctotal"
    t.decimal "massamuscbraesq"
    t.decimal "massamuscbradir"
    t.decimal "massamuscperesq"
    t.decimal "massamuscperdir"
    t.decimal "massamusctronco"
    t.integer "paciente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id"], name: "index_medidas_on_paciente_id"
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.date "nascimento"
    t.decimal "altura"
    t.string "genero"
    t.string "telefone"
    t.text "notas"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.integer "nivelatividade"
    t.string "whatsapp"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
