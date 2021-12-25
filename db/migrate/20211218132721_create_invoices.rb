class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.string :title
      t.string :company_name
      t.string :zip
      t.string :pref
      t.string :address
      t.string :tel
      t.integer :subtotal
      t.integer :tax_rate
      t.integer :tax
      t.integer :amount
      t.string :sub1

      t.timestamps
    end
  end
end
