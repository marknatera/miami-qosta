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

ActiveRecord::Schema.define(version: 20150415024947) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "amenities", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "development_id"
  end

  create_table "building_services", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "development_id"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first"
    t.string   "last"
    t.string   "email"
    t.string   "cellphone"
    t.string   "interest"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "development_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developments", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.text     "description"
    t.text     "building_info"
    t.string   "area_url"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "development_type_id"
    t.text     "payment_schedule"
    t.text     "penthouse"
    t.string   "featured_image_file_name"
    t.string   "featured_image_content_type"
    t.integer  "featured_image_file_size"
    t.datetime "featured_image_updated_at"
    t.string   "amenities_image_file_name"
    t.string   "amenities_image_content_type"
    t.integer  "amenities_image_file_size"
    t.datetime "amenities_image_updated_at"
    t.string   "services_image_file_name"
    t.string   "services_image_content_type"
    t.integer  "services_image_file_size"
    t.datetime "services_image_updated_at"
    t.string   "residence_image_file_name"
    t.string   "residence_image_content_type"
    t.integer  "residence_image_file_size"
    t.datetime "residence_image_updated_at"
    t.string   "penthouse_image_file_name"
    t.string   "penthouse_image_content_type"
    t.integer  "penthouse_image_file_size"
    t.datetime "penthouse_image_updated_at"
    t.string   "area_and_floorplan_image_file_name"
    t.string   "area_and_floorplan_image_content_type"
    t.integer  "area_and_floorplan_image_file_size"
    t.datetime "area_and_floorplan_image_updated_at"
    t.string   "floorplan_pdf_file_name"
    t.string   "floorplan_pdf_content_type"
    t.integer  "floorplan_pdf_file_size"
    t.datetime "floorplan_pdf_updated_at"
    t.integer  "relation_development_1"
    t.integer  "relation_development_2"
    t.integer  "relation_development_3"
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "development_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "gallery_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "description"
  end

  create_table "residence_features", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "development_id"
  end

  create_table "residence_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "development_id"
  end

end
