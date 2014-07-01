class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.string :contract_number
      t.string :record_number
      t.string :cadastral_territory
      t.string :regarding_plat_numbers
      t.date :acceptance_date
      t.date :fulfilment_term
      t.text :contract_description
      t.string :order_number
      t.string :ordered_by
      t.string :order_phone
      t.date :bend_date
      t.date :make_out_date
      t.date :check_date
      t.text :unfulfill_reason
      t.string :sketch_number
      t.date :screened_date
      t.date :handover_date
      t.string :deliver_address
      t.decimal :agreed_price
      t.text :price_creation_specification
      t.text :information_from_CO_ect
      t.text :invoicing_foundations
      t.text :other_important_particulars
      t.references :customer, index: true
      t.references :cadastral_office, index: true
      t.references :township, index: true
      t.references :responsible, index: true
      t.references :bend, index: true
      t.references :drawed_up, index: true
      t.references :checked, index: true
      t.references :screened, index: true
      t.references :order_way, index: true
      t.references :order_type, index: true
      t.references :handover_way, index: true
      t.references :price_creation, index: true

      t.timestamps
    end
  end
end
