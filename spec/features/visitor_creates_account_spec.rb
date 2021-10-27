require 'rails_helper'

feature 'Account creation' do
  scenario 'allows guest to create account' do
    visit new_user_registration_path

    fill_in :user_email, :with => 'user@example.com'
    fill_in :user_username, :with => 'John Appleseed'
    fill_in :user_password, :with => '123456'
    fill_in :user_password_confirmation, :with => '123456'

    click_button 'Sign up'

    expect(page).to have_content 'Welcome! You have signed up successfully.'
  end
end