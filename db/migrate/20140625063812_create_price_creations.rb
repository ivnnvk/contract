class CreatePriceCreations < ActiveRecord::Migration
  def change
    create_table :price_creations do |t|
      t.string :name

      t.timestamps
    end
  end
end
