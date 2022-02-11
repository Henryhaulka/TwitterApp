require 'rails_helper'
RSpec.describe 'Followership', type: :feature do
  before :each do
    @user1 = User.create(email: 'user@example.com', password: 'password', name: 'user')
    @user2 = User.create(email: 'user2@example.com', password: 'password2', name: 'user2')
    visit '/users/sign_in'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
  it 'Follow a User' do
    visit 'tweeets'
    click_link 'Follow'
    expect(page).to have_text("You are now following #{@user2.name}")
  end
  it 'Unfollows a User' do
    visit 'tweeets'
    click_link 'Follow'
    expect(page).to have_text("You are now following #{@user2.name}")
    click_link 'Unfollow'
    expect(page).to have_text("You have successfully unfollowed #{@user2.name}")
  end
end
