class AddUpdateFieldToSource < ActiveRecord::Migration
  def change
    add_column :sources, :update_feed, :boolean
  end
end
