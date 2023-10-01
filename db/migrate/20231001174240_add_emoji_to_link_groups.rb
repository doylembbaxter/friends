class AddEmojiToLinkGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :link_groups, :emoji, :string
  end
end
