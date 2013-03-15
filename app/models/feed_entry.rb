class FeedEntry < ActiveRecord::Base
  attr_accessible :name, :summary, :url, :published_at, :guid, :feed_title, :feed_id
  belongs_to :source

  def source
    @source = Source.where(:id => self.feed_id).first
  end

  def self.update_from_feed(source)
    feed = Feedzirra::Feed.fetch_and_parse(source.url)
    if feed.entries
      add_entries(feed.entries, source.author, source.id)
    end
  end
  #handle_asynchronously :update_from_feed

  def self.update_from_feed_continuously(source, delay_interval = 15.minutes)
    feed = Feedzirra::Feed.fetch_and_parse(source.url)
    add_entries(feed.entries, feed.title, feed.id)
    loop do
      sleep delay_interval
      feed = Feedzirra::Feed.update(feed)
      add_entries(feed.new_entries, feed.title, feed.id) if feed.updated?
    end
  end

  private

  def self.add_entries(entries, title, id)
    entries.each do |entry|
      unless exists? :guid => entry.id
        create!(
          :feed_id => id,
          :feed_title   => title,
          :name         => entry.title,
          :summary      => entry.summary,
          :url          => entry.url,
          :published_at => entry.published,
          :guid         => entry.id
        )
      end
    end
  end

end
