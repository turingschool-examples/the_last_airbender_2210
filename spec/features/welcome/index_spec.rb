require 'rails_helper'

RSpec.describe "Welcome Index" do
  context "search for members by nation" do
    it "has a select form and submit to search for members" do
      visit root_path
      
      expect(page).to have_field(:nation)
      expect(page).to have_button("Search For Members")

      click_button("Search For Members")
      
      expect(current_path).to eq(search_path)
    end
  end
end