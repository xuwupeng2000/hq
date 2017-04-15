require 'rails_helper'

feature 'Display a list of user to destination' do
  scenario 'see the modal open with content', js: true do
    visit '/'

    save_and_open_page
    click_button 'users-to-des-button-42'
    expect(page).to have_content 'User list'
  end
end
