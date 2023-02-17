require 'rails_helper'

RSpec.describe "Search Index" do
  before :each do
    visit root_path
    select 'Fire Nation', from: :nation
    click_button("Search For Members")
  end
  
  context "search nation members" do
    it "displays results" do
      expect(page).to have_content("Total Members: 97")
      expect(page).to have_content("Enemies", count: 25)
      expect(page).to have_content("Allies", count: 25)
      expect(page).to have_content("Affiliation", count: 25)
    end
    
    it "has individual information" do
      within("#member-1") do
        expect(page).to have_content("Afiko")
        expect(page).to have_content("Aang")
        expect(page).to have_content("Fire Nation", count: 2)
      end
    end
    
    it "displays none or no photo if missing information" do
      within("#member-10") do
        expect(page).to have_content("No Photo :(")
      end
      within("#member-16") do
        expect(page).to have_content("None", count: 2)
      end
    end
  end
end