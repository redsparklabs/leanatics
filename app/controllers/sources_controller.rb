class SourcesController < ApplicationController
  before_filter :authenticate
  # GET /sources
  # GET /sources.json
  def index
    @sources = Source.all(:order => 'author')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sources }
    end
  end

  # GET /sources/1
  # GET /sources/1.json
  def show
    @source = Source.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @source }
    end
  end

  # GET /sources/new
  # GET /sources/new.json
  def new
    @source = Source.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @source }
    end
  end

  # GET /sources/1/edit
  def edit
    @source = Source.find(params[:id])
  end

  # POST /sources
  # POST /sources.json
  def create
    @source = Source.new(params[:source])

    respond_to do |format|
      if @source.save
        format.html { redirect_to @source, notice: 'Source was successfully created.' }
        format.json { render json: @source, status: :created, location: @source }
      else
        format.html { render action: "new" }
        format.json { render json: @source.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sources/1
  # PUT /sources/1.json
  def update
    @source = Source.find(params[:id])

    respond_to do |format|
      if @source.update_attributes(params[:source])
        format.html { redirect_to @source, notice: 'Source was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @source.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sources/1
  # DELETE /sources/1.json
  def destroy
    @source = Source.find(params[:id])
    @source.destroy

    respond_to do |format|
      format.html { redirect_to sources_url }
      format.json { head :no_content }
    end
  end

  def clear_posts_cache
    FeedEntry.delete_all
    redirect_to sources_url
  end

  def updateallfeeds
    @active_sources = Source.where(:update_feed => true).all(:order => 'author')
    @active_sources.each do |source|
      update_feed(source)
    end
    redirect_to sources_url
  end

  def updatesinglefeed
    @source = Source.find(params[:id])
    update_feed(@source)
    redirect_to sources_url
  end



  private

   def update_feed(source)
    feed = Feedzirra::Feed.fetch_and_parse(source.url)
    if !feed.entries.nil?
      add_posts(feed.entries, source.author, source.id)
      source.set_lastupdated
    end
  end

  def add_posts(entries, title, id)
    entries.each do |entry|
        post = {
          :feed_id => id,
          :feed_title => title,
          :name => entry.title,
          :summary => entry.summary,
          :url => entry.url,
          :published_at => entry.published,
          :guid => entry.id }

        FeedEntry.find_or_create_by_guid(post)
    end
  end
  #handle_asynchronously :update_from_feed

end
