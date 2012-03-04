class ShowsController < ApplicationController

  before_filter :find_all_shows
  before_filter :find_page

  def index
    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @show in the line below:
    present(@page)
  end

  def show
    @show = Show.find(params[:id])

    # you can use meta fields from your model instead (e.g. browser_title)
    # by swapping @page for @show in the line below:
    present(@page)
  end

protected

  def find_all_shows
    @shows = Show.order('date desc').all.group_by { |s| s.date.year }
  end

  def find_page
    @page = Page.where(:link_url => "/shows").first
  end

end
