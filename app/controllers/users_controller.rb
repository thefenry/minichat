class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.new(create_params)
		if @user.save
			login(@user)
			redirect_to messages_path 
		else
			render :new
		end
	end

	private

	def create_params
		params.require(:user).permit(:username, :password, :password_confirmation, :email)
	end
end