class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		user = User.new(create_params)
		user.save
	end

	private

	def create_params
		params.require(:user).permit(:username, :password, :password_confirmation, :password_digest, :email)
	end
end