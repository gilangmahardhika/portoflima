class SessionController < ApplicationController
  def login
  	auth = request.env["omniauth.auth"]
    if user = User.find_by_uid(auth["uid"])
      session[:uid] = user.uid
      session[:token] = auth["credentials"]["token"]
      flash[:notice] = "Logged in"
      redirect_to root_url
    else
    	@user = User.new
		@auth = request.env["omniauth.auth"]
    end
  end

  def logout
  	session[:uid] = nil
  	flash[:notice] = "Logged Out"
  	redirect_to root_url
  end

  def register
  	@user = User.new(params[:user])

    respond_to do |format|
      if @user.save
      	session[:uid] = params[:uid]
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
end
