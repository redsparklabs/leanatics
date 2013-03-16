class AddLastUpdatedColumnToSource < ActiveRecord::Migration
  def change
    add_column :sources, :last_updated, :datetime
  end
end
