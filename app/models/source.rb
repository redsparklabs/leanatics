class Source < ActiveRecord::Base
  attr_accessible :author, :name, :url, :clarity, :bio, :twitter, :picture, :blog, :slug, :active, :categories, :last_updated
  has_many :feed_entries
  serialize :categories

  def tags
    tags = self.categories.to_s.split(',')
    @cleantags = Array.new
    tags.each do |tag|
      @cleantags << tag.strip
    end
    @cleantags
  end

  def set_lastupdated
    self.last_updated = DateTime.now
    self.save
  end
end
