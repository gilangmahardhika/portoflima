class HomeController < ApplicationController
  def index
  	@title = "Share your web portfolios here | sickl.us"
  	@recents = Work.order("created_at DESC").limit(6)
  	@populars = Work.order("like DESC", "point DESC").limit(6)
  end
end
