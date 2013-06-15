class Source < ActiveRecord::Base
  attr_accessible :author, :name, :url, :clarity, :bio, :twitter, :picture, :blog, :slug, :active, :categories, :last_updated, :update_feed
  has_many :feed_entries
  serialize :categories

  def post_count
    FeedEntry.where(:feed_id => self.id).count
  end

  def tags
    tags = self.categories.to_s.split(',')
    @cleantags = Array.new
    tags.each do |tag|
      @cleantags << tag.strip
    end
    @cleantags.uniq
  end

  def set_lastupdated
    self.last_updated = DateTime.now
    self.save
  end

  def self.update_all_feeds
    Source.all.each { |source| source.refresh_posts }
  end

  def refresh_posts
    if self.update_feed
      if feed = Feedzirra::Feed.fetch_and_parse(self.url)
        if !feed.entries.nil?
          feed.entries.each do |entry|
            post = {
              :feed_id => self.id,
              :feed_title => self.author,
              :name => entry.title,
              :summary => entry.summary,
              :url => entry.url,
              :published_at => entry.published,
              :guid => entry.id }

            FeedEntry.find_or_create_by_guid(post)
          end
          self.set_lastupdated
        end
      end
    end
  end

  def autoupdate_feed
    @sources = FeedEntry.where(:update_feed => true).all
    @sources.each do |source|
      source.update_feed
    end
  end

  #handle_asynchronously :update_feed
  #handle_asynchronously :update_feed, :run_at => Proc.new { 10.seconds.from_now }

end
