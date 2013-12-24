require 'spec_helper'

feature 'visit home page' do
  scenario 'view home page title' do
    visit root_path
    expect(page).to have_content("All Entries")
  end

  scenario 'view all posts' do
    visit new_journal_entry_path
    fill_in 'Title', with: "Hello world"
    fill_in 'Description', with: "I see the world"
    click_button 'Create Journal entry'
    expect(page).to have_content("Hello world")
    expect(page).to have_content("I see the world")
  end

end

