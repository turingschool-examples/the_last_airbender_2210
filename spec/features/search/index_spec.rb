require 'rails_helper'

RSpec.describe "Search index" do
  describe "when visiting search after selecting a nation from '/'" do
    before :each do
      visit '/'

      select "Fire Nation", from: :nation
      click_button("Search For Members")
    end
    it 'user sees total number of people in the fire nation' do
      expect(page).to have_content("Fire Nation")
      expect(page).to have_content("Number of members: ")
    end

    xit 'user sees a list of the top 25 members of the nation' do
      within "#members" do
        expect(page).to have_content(1)
        expect(page).to have_content(25)
      end
    end

    it  'for each member there is their name, photo, list of allies, list of enemies, and any affiliations' do
      within "#member-5cf5679a915ecad153ab68dd" do
        expect(page).to have_content("Azulon")
        expect(page).to have_content("Allies: Iroh")
        expect(page).to have_content("Enemies: Ozai")
        expect(page).to have_content("Affiliations: Fire Nation Fire Nation Royal Family Military of the Fire Nation")
      end
    end
  end
end