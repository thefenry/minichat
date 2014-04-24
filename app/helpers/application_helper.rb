module ApplicationHelper
	def broadcast(channel, &block)
		message = {:channel => channel, :data => capture(&block), :ext => {:auth_token => FAYE_TOKEN}}
		uri = URI.parse("http://localhost:9292/faye")
		Net::HTTP.post_form(uri, :message => message.to_json)
	end

	def is_user?(user)
		if session[:user_id] == user.id
			"localuser"
		else
			"otheruser"
		end
	end
end
