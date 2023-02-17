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

      within first "#member" do 
        expect(page).to have_content("Name: Afiko")
        expect(page).to have_content("Allies: Fire Nation")
        expect(page).to have_content("Enemies: Aang")
      end
    end
  end
end