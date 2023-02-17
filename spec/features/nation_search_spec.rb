require 'rails_helper'

RSpec.describe 'nation search' do
  it 'finds members of a nation and lists, total number, and first 2 members' do
    visit '/'
    select 'Fire Nation', from: 'nation'
    click_button 'Search For Members'

    expect(current_path).to eq('/search')

    expect(page).to have_content('Total people who live here: 97')

    expect(page).to have_css('.members', count: 25)

    within(first('.members')) do
      expect(page).to have_css('.name')
      expect(page).to have_css('.allies')
      expect(page).to have_css('.enemies')
      expect(page).to have_css('.affiliations')
    end
  end
end