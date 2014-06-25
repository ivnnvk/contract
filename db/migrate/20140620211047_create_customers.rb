class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :place
      t.string :representant
      t.string :phone

      t.timestamps
    end
  end
end
