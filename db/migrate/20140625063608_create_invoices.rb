class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.string :number
      t.decimal :amount
      t.date :issue_date
      t.date :due_date
      t.references :contract, index: true

      t.timestamps
    end
  end
end
