class Source < ActiveRecord::Base
  attr_accessible :author, :name, :url, :clarity, :bio, :twitter, :picture, :blog, :slug, :active, :categories
  has_many :feed_entries
  serialize :categories
end
