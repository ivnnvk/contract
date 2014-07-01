class CreateUsageSources < ActiveRecord::Migration
  def change
    create_table :usage_sources do |t|
      t.datetime :from
      t.datetime :to
      t.decimal :unit_number
      t.decimal :amount
      t.references :source, index: true
      t.references :contract, index: true
      t.references :employee, index: true

      t.timestamps
    end
  end
end
