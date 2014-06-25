class CreateCadastralOffices < ActiveRecord::Migration
  def change
    create_table :cadastral_offices do |t|
      t.string :name

      t.timestamps
    end
  end
end
