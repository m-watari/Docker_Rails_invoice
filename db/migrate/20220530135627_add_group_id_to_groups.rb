class AddGroupIdToGroups < ActiveRecord::Migration[5.2]
  def change
    add_column :groups, :group_id, :string
  end
end
