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

ActiveRecord::Schema.define(version: 20150818113604) do

  create_table "cadastral_offices", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contracts", force: true do |t|
    t.string   "contract_number"
    t.string   "record_number"
    t.string   "cadastral_territory"
    t.string   "regarding_plat_numbers"
    t.date     "acceptance_date"
    t.date     "fulfilment_term"
    t.text     "contract_description"
    t.string   "order_number"
    t.string   "ordered_by"
    t.string   "order_phone"
    t.date     "bend_date"
    t.date     "make_out_date"
    t.date     "check_date"
    t.text     "unfulfill_reason"
    t.string   "sketch_number"
    t.date     "screened_date"
    t.date     "handover_date"
    t.string   "deliver_address"
    t.decimal  "agreed_price"
    t.text     "price_creation_specification"
    t.text     "information_from_CO_ect"
    t.text     "invoicing_foundations"
    t.text     "other_important_particulars"
    t.integer  "customer_id"
    t.integer  "cadastral_office_id"
    t.integer  "township_id"
    t.integer  "responsible_id"
    t.integer  "bend_1_id"
    t.integer  "bend_2_id"
    t.integer  "drawed_up_id"
    t.integer  "checked_id"
    t.integer  "screened_id"
    t.integer  "order_way_id"
    t.integer  "order_type_id"
    t.integer  "handover_way_id"
    t.integer  "price_creation_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contracts", ["bend_1_id"], name: "index_contracts_on_bend_1_id"
  add_index "contracts", ["bend_2_id"], name: "index_contracts_on_bend_2_id"
  add_index "contracts", ["cadastral_office_id"], name: "index_contracts_on_cadastral_office_id"
  add_index "contracts", ["checked_id"], name: "index_contracts_on_checked_id"
  add_index "contracts", ["customer_id"], name: "index_contracts_on_customer_id"
  add_index "contracts", ["drawed_up_id"], name: "index_contracts_on_drawed_up_id"
  add_index "contracts", ["handover_way_id"], name: "index_contracts_on_handover_way_id"
  add_index "contracts", ["order_type_id"], name: "index_contracts_on_order_type_id"
  add_index "contracts", ["order_way_id"], name: "index_contracts_on_order_way_id"
  add_index "contracts", ["price_creation_id"], name: "index_contracts_on_price_creation_id"
  add_index "contracts", ["responsible_id"], name: "index_contracts_on_responsible_id"
  add_index "contracts", ["screened_id"], name: "index_contracts_on_screened_id"
  add_index "contracts", ["township_id"], name: "index_contracts_on_township_id"

  create_table "customers", force: true do |t|
    t.string   "name"
    t.text     "place"
    t.string   "representant"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "user_name"
    t.string   "name"
    t.decimal  "hour_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "handover_ways", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "invoices", force: true do |t|
    t.string   "number"
    t.decimal  "amount"
    t.date     "issue_date"
    t.date     "due_date"
    t.integer  "contract_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "invoices", ["contract_id"], name: "index_invoices_on_contract_id"

  create_table "order_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_ways", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_creations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "source_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", force: true do |t|
    t.string   "description"
    t.string   "unit"
    t.decimal  "unit_price"
    t.integer  "source_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sources", ["source_type_id"], name: "index_sources_on_source_type_id"

  create_table "townships", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usage_sources", force: true do |t|
    t.datetime "from"
    t.datetime "to"
    t.decimal  "unit_number"
    t.decimal  "amount"
    t.integer  "source_id"
    t.integer  "contract_id"
    t.integer  "employee_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "usage_sources", ["contract_id"], name: "index_usage_sources_on_contract_id"
  add_index "usage_sources", ["employee_id"], name: "index_usage_sources_on_employee_id"
  add_index "usage_sources", ["source_id"], name: "index_usage_sources_on_source_id"

  create_table "work_diaries", force: true do |t|
    t.string   "doing"
    t.datetime "from"
    t.datetime "to"
    t.integer  "employee_id"
    t.integer  "contract_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "work_diaries", ["contract_id"], name: "index_work_diaries_on_contract_id"
  add_index "work_diaries", ["employee_id"], name: "index_work_diaries_on_employee_id"

end
