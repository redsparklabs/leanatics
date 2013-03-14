class FeedController < ApplicationController

  def feed
    #sources = Source.all
    #sources.each do |feed|
      #FeedEntry.delay.update_from_feed(feed)
    #end
    @active_sources = Source.where(:active => true).where("categories like '%lean%'").all(:order => 'author')
    #@active_sources.each do |source|
      #FeedEntry.delay.update_from_feed(source)
    #end
    @entries = FeedEntry.where(:feed_id => @active_sources).all(:limit => 50, :order => 'published_at desc')
  end

  def profile
    @source = Source.where(:slug => params[:slug]).first
    @entries = FeedEntry.where(:feed_id => @source).all(:limit => 50, :order => "published_at desc")
    #@clarity = HTTParty.get('http://api.clarity.fm/1/members?id='+@source.clarity)
  end

  def tag
    @active_sources = Source.where(:active => true).where("categories like '%"+params[:tag]+"%'")
    @entries = FeedEntry.where(:feed_id => @active_sources).all(:limit => 50, :order => "published_at desc")
  end

end
