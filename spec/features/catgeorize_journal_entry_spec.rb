require 'spec_helper'

feature 'new categories' do
  before :each do
    visit new_category_path
  end

  scenario 'add category' do
    fill_in 'Name', with: 'ruby'
    click_on 'Create Category'

    expect(page).to have_content('ruby')
  end

  scenario 'invalid input' do
    click_on 'Create Category'

    expect(page).to have_content('Error')
  end

end

