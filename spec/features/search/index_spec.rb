require 'rails_helper'

RSpec.describe 'The Search page', type: :feature do
  describe '/search' do
    it 'can display the first 25 results for a given faction' do
      visit '/'
      select "Fire Nation", from: :nation
      click_button "Search For Members"
      expect(current_path).to eq search_path

      expect(page).to have_content "Total Population: 97"
      within "#member_0" do
        expect(page).to have_content "Name: Afiko"
        expect(page).to have_content "Allies: Fire Nation"
        expect(page).to have_content "Enemies: Aang"
        expect(page).to have_content "Affiliations: Fire Nation"
        expect(page.find('img')[:src]).to eq 'https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128' 
      end
    end
  end
end
