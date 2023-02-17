require 'rails_helper'

RSpec.describe 'Search results page' do 
  describe 'when I search for a member by their affiliation' do 
    it 'shows the total number of people living in that nation' do 
      visit root_path 

      select 'Fire Nation', :from => 'nation'
      click_on "commit"

      expect(current_path).to eq '/search'
      expect(page).to have_content("Found 97 fire+nation members.")
    end

    it 'should have detailed information for the first 25 members' do 
      visit root_path 

      select 'Fire Nation', :from => 'nation'
      click_on "commit"

      expect(current_path).to eq '/search'

      # expect(page.all('Name').count).to eq 25
      expect(page).to have_content("First 25 members:")

      within "#member_Afiko" do 
        expect(page).to have_content("Name: Afiko")
        expect(page).to have_content("Allies: Fire Nation")
        expect(page).to have_content("Enemies: Aang")
        expect(page).to have_content("Affiliation: Fire Nation")
      end

      within "#member_Elua" do 
        expect(page).to have_content("Name: Elua")
        expect(page).to have_content("Allies: Ozai")
        expect(page).to have_content("Enemies: None")
        expect(page).to have_content("Affiliation: Fire Nation Fire Nation Royal Family")
      end
    end
  end
end