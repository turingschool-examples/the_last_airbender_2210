require 'rails_helper'

RSpec.describe 'Search Index' do
  it 'Is able to search from the welcome page' do
    visit root_path
    select("Fire Nation", from: "nation")
    click_button "Search For Members"

    expect(current_path).to eq(search_path)
  end

  it 'displays all character information for each character' do
    visit root_path
    select("Fire Nation", from: "nation")
    click_button "Search For Members"

    within("#character_5cf5679a915ecad153ab68cc") do
      expect(page).to have_content('Allies: Fire Nation')
      expect(page).to have_content('Afiko')
      expect(page).to have_content('Enemies: Aang')
      expect(page).to have_content('Affiliations: Fire Nation')
      expect(page.find('img')[:src]).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
    end

    within("#character_5cf5679a915ecad153ab691d") do
      expect(page).to have_content('Allies: None')
      expect(page).to have_content('Ember Island Players')
      expect(page).to have_content('Enemies: None')
      expect(page).to have_content('Affiliations: Fire Nation')
      expect(page.find('img')[:src]).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/16/Ember_Island_Players.png/revision/latest?cb=20130722113209")
    end
  end

  it 'displays a count of all characters for a specific nation' do
    visit root_path
    select("Fire Nation", from: "nation")
    click_button "Search For Members"

    expect(page).to have_content('Character Count: 97')
  end

  it 'displays only the first 25 characters' do
    visit root_path
    select("Fire Nation", from: "nation")
    click_button "Search For Members"

    expect(page).to have_content('Allies', count: 25)
  end
end