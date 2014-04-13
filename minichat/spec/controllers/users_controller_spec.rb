require 'spec_helper'

describe UsersController do 

	context '#new' do
		it 'should load login page' do 
			get :new
			expect(response).to be_ok
		end

		it 'should assign @user to new user'
	end

	context '#create' do
		context 'with valid attributes' do
			it 'should redirect user'

			it 'should increate User count by one'
		end
		
		context 'with invalid attributes' do
			it 'should not redirect'

			it 'should not increase user count by one'
		end
	end
end
