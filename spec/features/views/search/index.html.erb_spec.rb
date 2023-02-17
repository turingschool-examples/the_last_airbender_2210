require 'rails_helper'

RSpec.describe 'Search Index' do
  before(:each) do
    visit root_path
    select("Fire Nation", from: "nation")
    click_button("Search For Members")
  end

  it 'displays title and total count members for nation' do
    expect(page).to have_content('Search Results')
    expect(page).to have_content("Total Members: 97")
  end

  it 'lists members of nation selected and their attributes' do
    expect(page).to have_content("Afiko")
    expect(page).to have_content("Azulon")
    expect(page).to have_content("Chan")
    within("#member-id-5cf5679a915ecad153ab68da") do
      expect(page).to have_content("Azula")
      expect(page).to have_content("Ozai")
      expect(page).to have_content("Iroh")
      expect(page).to have_content("Azula's team")
    end
  end
end