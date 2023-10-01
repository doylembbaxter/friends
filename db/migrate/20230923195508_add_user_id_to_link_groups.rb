class AddUserIdToLinkGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :link_groups, :user_id, :integer
    add_index :link_groups, :user_id
  end
end
