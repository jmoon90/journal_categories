require 'spec_helper'

feature 'edit category' do
  scenario 'edit category' do

    visit categories_path
    click_on 'Edit'
    fill_in 'Name', with: 'blue berry'

    click_on 'Update Category'
    expect(page).to have_content('blue berry')
  end
end

