class AboutController < ApplicationController
  def index
  	@title = "About Portoflima"
  	@about = AboutMe.first
  	respond_to do |format|
  		format.html
  	end
  end
end
