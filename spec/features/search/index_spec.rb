require 'rails_helper'

RSpec.describe 'Search Index' do
  it 'displays the total number of people in a nation' do
    visit root_path
    select 'Fire Nation', from: 'nation'
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content('Total number of people in the Fire Nation: 97')
    expect(page).to have_css('.fire', count: 25)

    within(first('.food')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.photo')
      expect(page).to have_css('.allies')
      expect(page).to have_css('.enemies')
      expect(page).to have_css('.affiliations')
    end
  end
end