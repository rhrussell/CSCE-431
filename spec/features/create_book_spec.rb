require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'Title', with: 'Test_Title'
    fill_in 'Author', with: 'Test_Author'
    select 'Horror', from: 'Genre'
    fill_in 'Price', with: 5
    fill_in 'Published date', with: '01/01/2021'
    click_on 'Create Book'
    #visit book_path
    expect(page).to have_content('Test_Title')
  end
end