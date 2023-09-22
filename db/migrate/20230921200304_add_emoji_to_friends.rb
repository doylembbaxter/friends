class AddEmojiToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :emoji, :string
  end
end
