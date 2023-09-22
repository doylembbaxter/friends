class AddDescriptionToLinks < ActiveRecord::Migration[7.0]
  def change
    add_column :links, :description, :text
  end
end
