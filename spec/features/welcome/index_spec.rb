require 'rails_helper'

RSpec.describe "welcome page" do
  describe "visiting welcome page" do
    it "user selects fire nation from select field and clicks search for members is redeirected to /search" do
      visit '/'

      select "Fire Nation", from: :nation
      click_button("Search For Members")

      expect(current_path).to eq("/search")
    end
  end
end