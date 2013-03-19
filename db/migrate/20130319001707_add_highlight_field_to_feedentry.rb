class AddHighlightFieldToFeedentry < ActiveRecord::Migration
  def change
    add_column :feed_entries, :highlight, :boolean
  end
end
