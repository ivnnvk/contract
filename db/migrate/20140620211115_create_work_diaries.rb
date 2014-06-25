class CreateWorkDiaries < ActiveRecord::Migration
  def change
    create_table :work_diaries do |t|
      t.datetime :from
      t.datetime :to
      t.references :employee, index: true
      t.references :contract, index: true

      t.timestamps
    end
  end
end
