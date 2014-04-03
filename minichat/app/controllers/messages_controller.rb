class MessagesController < ApplicationController
	def index
		@messages = Message.all
	end
	
	def create
		@messages = Message.create!(params[:message])
	end
end