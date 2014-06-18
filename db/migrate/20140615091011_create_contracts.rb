class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :contract_number
      t.string :record_number
      t.string :cadastral_territory
      t.string :regarding_plat_numbers
      t.datetime :acceptance_date
      t.datetime :fulfilment_term
      t.text :contract_description
      t.string :order_way
      t.string :order_number
      t.string :order_type
      t.datetime :bend_date
      t.datetime :make_out_date
      t.datetime :check_date
      t.text :unfulfill_reason
      t.string :sketch_number
      t.datetime :handover_date
      t.string :handover_way
      t.string :deliver_address
      t.decimal :agreed_price
      t.string :price_creation
      t.text :price_creation_specification
      t.text :Information_from_CO_ect
      t.text :invoicing_foundations
      t.text :other_important_particulars

      t.timestamps
    end
  end
end
