class FeedEntry < ActiveRecord::Base
  attr_accessible :name, :summary, :url, :published_at, :guid, :feed_title, :feed_id
  belongs_to :source

  def source
    @source = Source.where(:id => self.feed_id).first
  end

  def summary_clean
    if !self.summary.nil?
      self.summary.gsub(/<\/?[^>]*>/, '')
    end
  end

end
