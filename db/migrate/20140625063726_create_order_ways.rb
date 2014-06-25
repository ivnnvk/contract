class CreateOrderWays < ActiveRecord::Migration
  def change
    create_table :order_ways do |t|
      t.string :name

      t.timestamps
    end
  end
end
