class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method	:current_user

  rescue_from ActiveRecord::RecordNotFound do |exception|
    flash[:error] = "404 Not Found";
    redirect_to root_url
  end
  
  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Access denied!"
    redirect_to root_url
  end

  private
  def current_user
  	@current_user ||= User.find_by_uid(session[:uid]) if session[:uid]
  end
end
