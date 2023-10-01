class RemoveUserIdFromLinks < ActiveRecord::Migration[7.0]
  def change
    remove_index :links, :user_id
    remove_column :links, :user_id, :integer
  end
end
