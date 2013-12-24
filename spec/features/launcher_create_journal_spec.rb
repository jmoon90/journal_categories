require 'spec_helper'

feature 'user creates journal entry' do
  given!(:new) { visit new_journal_entry_path }
  scenario 'user fills valid inputs' do
    within("form#new_journal_entry") do
      fill_in 'Title', with: 'first post'
      fill_in 'Description', with: 'This is my first post'
      click_button 'Create Journal entry'
    end
    expect(page).to have_content('Success')
  end

  scenario 'when input not valid' do
    click_button 'Create Journal entry'
  end
end
