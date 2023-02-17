require 'rails_helper'

RSpec.describe 'The Search page', type: :feature do
  describe '/search' do
    it 'can display the first 25 results for a given faction' do
      expect(page).to have_content "Total Population: "
      within "member_details" do
        expect(page).to have_content "Name: "
        expect(page).to have_content "Allies: "
        expect(page).to have_content "Enemies: "
        expect(page).to have_content "Affliiations: "
 # photo       expect(page).to have_content "", 
      end
    end
  end
end
