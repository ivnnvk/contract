class CreateHandoverWays < ActiveRecord::Migration
  def change
    create_table :handover_ways do |t|
      t.string :name

      t.timestamps
    end
  end
end
