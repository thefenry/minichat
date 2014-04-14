require 'spec_helper'

describe UsersController do 

	context '#new' do
		it 'should load login page' do 
			get :new
			expect(response).to be_ok
		end

		it 'should assign @user to new user' do 
			get :new
			expect(assigns(:user)).to be_a_new(User)
		end
	end

	context '#create' do
		context 'with valid attributes' do
			it 'should redirect user' do 
				expect(response).to be_redirect
			end

			it 'should increate User count by one'
		end
		
		context 'with invalid attributes' do
			it 'should not redirect'

			it 'should not increase user count by one'
		end
	end
end
