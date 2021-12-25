class CreateInvoiceDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :invoice_details do |t|
      t.string :title
      t.integer :quantity
      t.string :unit
      t.integer :unit_price
      t.integer :sort
      t.integer :invoice_id

      t.timestamps
    end
  end
end
