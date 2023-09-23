class CreateLinkGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :link_groups do |t|
      t.string :title

      t.timestamps
    end
  end
end
