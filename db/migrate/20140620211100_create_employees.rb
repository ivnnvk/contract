class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :user_name
      t.string :name
      t.decimal :hour_rate

      t.timestamps
    end
  end
end
