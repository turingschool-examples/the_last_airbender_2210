require 'rails_helper'

RSpec.describe 'Search Index' do
  it 'displays the total number of people in a nation' do
    visit root_path
    select 'Fire Nation', from: 'nation'
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    save_and_open_page
    expect(page).to have_content('Total number of people in the fire+nation: 396')
    expect(page).to have_css('.member', count: 25)

    within(first('.member')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.photo')
      expect(page).to have_css('.allies')
      expect(page).to have_css('.enemies')
      expect(page).to have_css('.affiliation')
    end
  end
end