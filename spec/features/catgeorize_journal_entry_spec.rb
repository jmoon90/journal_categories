require 'spec_helper'

feature 'new categories' do
  visit new_category_path
  scenario 'add category' do
    fill_in 'name', with: 'ruby'
    click_on 'submit'

    expect(page).to have_content('ruby')
  end

  scenario 'invalid input' do
    click_on 'submit'

    expect(page).to have_content('error')
  end

  scenario 'edit category' do
    visit edit_category_path(params[:id])
    fill_in 'name', with: 'rails'
    click_on 'submit'

    expect(page).to have_content('rails')
  end

end

