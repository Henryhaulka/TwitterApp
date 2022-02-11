require 'rails_helper'
RSpec.describe 'Sign in', type: :feature do
    before :each do
        @user = User.create(name: 'User', username: 'Username', email:'user@example.com', password: '123456')
    end

    it "sign in a registered user" do
        visit '/users/sign_in'
        fill_in "Email",	with: "user@example.com" 
        fill_in "Password",	with: "123456" 
        click_button 'Log in'
        expect(page).to have_content 'Signed in successfully.'
    end

    it "doesn't sign in unregistered user" do
        visit '/users/sign_in'
        fill_in "Email",	with: "wrong@example.com" 
        fill_in "Password",	with: "1234" 
        click_button 'Log in'
        expect(page).to have_content 'Invalid Email or password.'
    end
    
    
end