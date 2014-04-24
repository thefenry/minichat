class SessionsController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.find_by_username(params[:username])
		if @user && @user.authenticate(params[:password])
			login(@user)
			redirect_to messages_path 
		else
			flash[:errors] = "Wrong username/password combination"
			render :new
		end
	end

	def destroy
		session.clear	
		flash[:errors] = "You have successfully logged out!"
		redirect_to login_path
	end

end