class MessagesController < ApplicationController
	def index
		@messages = Message.all
	end
	
	def create
		debugger
		@messages = Message.create!(message_params)
	end

	private 

	def message_params
		params.require(:message).permit(:content)
	end
end