class SessionsController < ApplicationController
  def new
  end

  def create
  	@user = User.new(params[:user])
	if @user.save
    flash[:notice] = "Your account was created
    successfully."
    redirect_to user_path @post
	else
	    flash[:alert] = "There was a problem saving your
	    account."
	    redirect_to session_path
	end
  end

end
