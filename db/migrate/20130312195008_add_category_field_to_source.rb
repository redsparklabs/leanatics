class AddCategoryFieldToSource < ActiveRecord::Migration
  def change
    add_column :sources, :categories, :text
  end
end
