require 'spec_helper'

describe UsersController do 
	let(:attribs) { attributes_for :user }
	let(:invalid_attribs) {invalid_attribs ={ :email => Faker::Internet.free_email, :username => Faker::Lorem.word,
    :password => '12345', :password_confirmation => '1234'}}
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
				post :create, :user => attribs 
				expect(response).to be_redirect
			end

			it 'should increate User count by one' do 
				expect{post :create, :user => attribs }.to change{ User.count }.by 1
			end
		end
		
		context 'with invalid attributes' do
			it 'should not redirect' do 
				post :create, :user => invalid_attribs
				expect(response).to_not be_redirect
			end

			it 'should not increase user count by one' do
				expect{ post :create, :user => invalid_attribs }.to_not change { User.count}.by 1
			end
		end
	end
end
