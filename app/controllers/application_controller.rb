class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method	:current_user

  private
  def current_user
  	@current_user ||= User.find_by_uid(session[:uid]) if session[:uid]
  end
end
