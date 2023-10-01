class AddDescriptionToLinkGroup < ActiveRecord::Migration[7.0]
  def change
    add_column :link_groups, :description, :text
  end
end
