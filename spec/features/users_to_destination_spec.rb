require 'rails_helper'

feature 'Display a list of user to destination' do
  scenario 'see the modal open with content', js: true do
    visit '/'

    click_button 'users-to-des-button-42'
    expect(page).to have_content 'We are loading data from server please wait ...' 
  end
end
