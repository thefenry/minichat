class User < ActiveRecord::Base
	has_secure_password
	validates :email, :username, :password_digest, :presence => true
	validates :email, :username, :uniqueness => true
end