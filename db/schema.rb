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

ActiveRecord::Schema.define(version: 20150527133820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_tokens", force: true do |t|
    t.integer  "user_id"
    t.text     "token"
    t.datetime "token_expire"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "delivery_sources", force: true do |t|
    t.string   "label"
    t.string   "name"
    t.boolean  "is_active"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "email_templates", force: true do |t|
    t.text     "subject_sv"
    t.text     "subject_en"
    t.text     "body_sv"
    t.text     "body_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.string   "label"
    t.string   "name_sv"
    t.string   "name_en"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_sigel"
    t.string   "sigel"
  end

  create_table "notes", force: true do |t|
    t.integer  "order_id"
    t.text     "message"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "subject"
    t.boolean  "is_email"
  end

  add_index "notes", ["order_id"], name: "index_notes_on_order_id", using: :btree

  create_table "order_types", force: true do |t|
    t.string   "name_sv"
    t.string   "name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label"
  end

  create_table "orders", force: true do |t|
    t.integer  "order_type_id"
    t.text     "title"
    t.text     "publication_year"
    t.text     "volume"
    t.text     "issue"
    t.text     "pages"
    t.text     "journal_title"
    t.text     "issn_isbn"
    t.text     "reference_information"
    t.boolean  "photocopies_if_loan_not_possible"
    t.boolean  "order_outside_scandinavia"
    t.boolean  "email_confirmation"
    t.text     "not_valid_after"
    t.integer  "delivery_type"
    t.text     "name"
    t.text     "company1"
    t.text     "company2"
    t.text     "company3"
    t.text     "phone_number"
    t.text     "email_address"
    t.text     "library_card_number"
    t.text     "customer_type"
    t.text     "comments"
    t.text     "form_lang"
    t.text     "authors"
    t.text     "order_number"
    t.text     "form_library"
    t.text     "delivery_place"
    t.text     "invoicing_name"
    t.text     "invoicing_address"
    t.text     "invoicing_postal_address1"
    t.text     "invoicing_postal_address2"
    t.text     "order_path"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "location_id"
    t.integer  "status_id"
    t.text     "libris_lf_number"
    t.integer  "libris_request_id"
    t.text     "librisid"
    t.text     "librismisc"
    t.text     "invoicing_id"
    t.integer  "sticky_note_id"
    t.string   "lending_library"
    t.boolean  "is_archived"
    t.integer  "delivery_source_id"
    t.text     "loan_period"
    t.integer  "price"
    t.boolean  "to_be_invoiced"
    t.text     "delivery_address"
    t.text     "delivery_postal_code"
    t.text     "delivery_city"
    t.text     "x_account"
    t.text     "invoicing_company"
    t.text     "publication_type"
    t.text     "period"
    t.text     "delivery_box"
    t.text     "delivery_comments"
  end

  create_table "status_group_members", force: true do |t|
    t.integer  "status_id"
    t.integer  "status_group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "status_groups", force: true do |t|
    t.string   "name_sv"
    t.string   "name_en"
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
  end

  create_table "statuses", force: true do |t|
    t.string   "name_sv"
    t.string   "name_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label"
    t.boolean  "is_active"
    t.integer  "position"
  end

  create_table "users", force: true do |t|
    t.string   "xkonto"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

end
