class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :description
      t.string :unit
      t.decimal :unit_price
      t.references :source_type, index: true

      t.timestamps
    end
  end
end
