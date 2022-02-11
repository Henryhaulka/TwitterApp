RSpec.describe 'Tweeet', type: :feature do
  before :each do
    @user1 = User.create(email: 'user@example.com', password: 'password', name: 'user')
    @user2 = User.create(email: 'user2@example.com', password: 'password2', name: 'user2')
    visit '/users/sign_in'
    fill_in 'Email', with: 'user@example.com'
    fill_in 'Password', with: 'password'
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end
  it 'creates a Twit' do
    fill_in 'Tweet', with: 'I am the man of the year'
    click_button 'Create Tweeet'
    expect(page).to have_content 'Tweeet was successfully created.'
  end
end
