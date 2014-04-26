require 'spec_helper'

feature 'new sighting page' do
  create_and_signin_user
  visit '/users/sign_in'
  within('#new_user') do
    fill_in "Email", :with => test_user.email
    fill_in "Password", :with => 'foobarbaz'
    click_button "Sign in"
  before { visit new_sightings_path }

  it 'should have the right title' do
    expect(page).to have_title "New Sighting"
  end
end
