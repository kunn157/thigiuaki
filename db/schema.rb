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

ActiveRecord::Schema.define(version: 2021_04_05_074416) do

  create_table "nhaxuatbans", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_nxb"
    t.string "ten_nxb"
    t.string "diachi"
    t.string "email"
    t.string "thongtin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nxbs", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_nxb"
    t.string "ten_nxb"
    t.string "diachi"
    t.string "email"
    t.string "thongtin"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sach1s", charset: "utf8mb4", force: :cascade do |t|
    t.string "matheloai"
    t.string "tentheloai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sach23s", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_tacgia"
    t.string "ten_tacgia"
    t.string "website"
    t.string "ghichu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "saches", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_tacgia"
    t.string "ten_tacgia"
    t.string "website"
    t.string "ghichu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tacgia", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_tacgia"
    t.string "ten_tacgia"
    t.string "website"
    t.string "ghichu"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "theloaisaches", charset: "utf8mb4", force: :cascade do |t|
    t.string "ma_sach"
    t.string "ten_sach"
    t.string "mtg"
    t.string "mtl"
    t.string "maNXB"
    t.integer "nxb"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tl_saches", charset: "utf8mb4", force: :cascade do |t|
    t.string "matheloai"
    t.string "tentheloai"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
