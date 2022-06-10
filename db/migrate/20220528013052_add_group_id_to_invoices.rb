class AddGroupIdToInvoices < ActiveRecord::Migration[5.2]
  def change
    add_column :invoices, :group_id, :string
  end
end
