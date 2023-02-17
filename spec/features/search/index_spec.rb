require 'rails_helper'

RSpec.describe 'Search Index' do 
  it 'retrieves the total number of people who live in the search nation and displays the first 25 members and their attributes' do 
    visit root_path

    select 'Fire Nation'
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
    expect(page).to have_content("There are 97 members")
    expect(page).to have_css('.member', count: 25)
    within("#member-Afiko") do
      expect(page).to have_content("Name: ")
      # expect(page).to have_content("Photo: ")
      expect(page).to have_content("Allies: ")
      expect(page).to have_content("Enemies: ")
      expect(page).to have_content("Affiliations: ")
      expect(page).to_not have_content("Azula")
    end
  end
end