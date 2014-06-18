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

ActiveRecord::Schema.define(version: 20140615091011) do

  create_table "contracts", force: true do |t|
    t.string   "contract_number"
    t.string   "record_number"
    t.string   "cadastral_territory"
    t.string   "regarding_plat_numbers"
    t.datetime "acceptance_date"
    t.datetime "fulfilment_term"
    t.text     "contract_description"
    t.string   "order_way"
    t.string   "order_number"
    t.string   "order_type"
    t.datetime "bend_date"
    t.datetime "make_out_date"
    t.datetime "check_date"
    t.text     "unfulfill_reason"
    t.string   "sketch_number"
    t.datetime "handover_date"
    t.string   "handover_way"
    t.string   "deliver_address"
    t.decimal  "agreed_price"
    t.string   "price_creation"
    t.text     "price_creation_specification"
    t.text     "Information_from_CO_ect"
    t.text     "invoicing_foundations"
    t.text     "other_important_particulars"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.text     "place"
    t.string   "representant"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
