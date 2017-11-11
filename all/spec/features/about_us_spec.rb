require 'rails_helper'

feature 'About BigCo model' do
  scenario 'toggles display of the modal about display' do
    visit root_path

    expect(page).not_to have_content 'About BigCo'
    expect(page).not_to \
      have_content 'BigCo produces the finest widgets in all the land'

    click_link 'About Us'

    expect(page).to have_content 'About BigCo'
    expect(page).to \
      have_content 'BigCo produces the finest widgets in all the land'

    within '#about_us' do
      click_button 'Close'
    end

    expect(page).not_to have_content 'About BigCo'
    expect(page).not_to \
      have_content 'BigCo produces the finest widgets in all the land'
  end
end