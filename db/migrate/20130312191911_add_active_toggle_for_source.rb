class AddActiveToggleForSource < ActiveRecord::Migration
  def up
  end

  def down
  end

  def change
    add_column :sources, :active, :boolean
  end
end
