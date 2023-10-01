class AddLinkGroupIdToLink < ActiveRecord::Migration[7.0]
  def change
    add_column :links, :link_group_id, :integer
    add_index :links, :link_group_id
  end
end
