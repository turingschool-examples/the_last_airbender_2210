require 'rails_helper'

RSpec.describe 'search index page' do
  it 'contains searched characters' do
    visit root_path

    select "Fire Nation", from: "nation"

    click_button "Search For Members"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Total Members: 97")

    within("#Afiko") do
      expect(page).to have_content("Name: Afiko")
      expect(page).to have_content("Affiliation: Fire Nation")
      expect(page).to have_content("Allies:\nFire")
      expect(page).to have_content("Enemies:\nAang")
    end
  end
end