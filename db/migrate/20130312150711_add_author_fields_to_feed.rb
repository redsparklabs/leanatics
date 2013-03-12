class AddAuthorFieldsToFeed < ActiveRecord::Migration
  def change
    add_column :sources, :clarity, :string
    add_column :sources, :bio, :text
    add_column :sources, :picture, :string
    add_column :sources, :twitter, :string
    add_column :sources, :blog, :string
  end
end
