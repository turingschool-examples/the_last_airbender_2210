require 'rails_helper'

RSpec.describe 'Search Index' do 
  it 'retrieves the total number of people who live in the search nation and displays the first 25 members and their attributes' do 
    visit root_path

    select 'Fire Nation'
    click_button 'Search for Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_css('.members', count: 25)
    within("#member-1") do
      expect(page).to have_content("member name")
      expect(page).to have_content("Allies: ")
      expect(page).to have_content("Enemies: ")
      expect(page).to have_content("Affiliations: ")
      expect(page).to_not have_content("2nd member name")
    end
  end
end