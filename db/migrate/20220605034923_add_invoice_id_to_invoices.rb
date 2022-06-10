class AddInvoiceIdToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :invoice_id, :string
  end
end
