# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_09_18_001959) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercicios", id: :integer, default: nil, force: :cascade do |t|
    t.string "nome", null: false
    t.integer "dependencia"
    t.integer "codependencia"
    t.integer "treino_id", null: false
    t.boolean "concluido"
    t.integer "nivel"
  end

  create_table "treinos", id: :integer, default: nil, force: :cascade do |t|
    t.string "nome", null: false
    t.integer "user_id", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unconfirmed_email"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "exercicios", "exercicios", column: "codependencia", name: "exercicios___fk2"
  add_foreign_key "exercicios", "exercicios", column: "dependencia", name: "exercicios___fk"
  add_foreign_key "exercicios", "treinos", name: "exercicios__fk"
  add_foreign_key "treinos", "users", name: "treinos_treinos__fk"
end
