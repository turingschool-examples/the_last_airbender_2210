require 'rails_helper'

# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.

# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has

RSpec.describe 'search index' do
  before { visit search_path(nation: "fire+nation") }

  it 'shows all the members of the nation' do
    within("#0.character") do
      expect(page).to have_content("Afiko")
    end

    within("#24.character") do
      expect(page).to have_content("Fire Navy officer")
    end

    within("#25.character") do
      expect(page).to have_content("Great Sage")
    end

    within("#96.character") do
      expect(page).to have_content("Zuko")
    end

    expect(all('li.character').count).to eq(97)
  end

  it 'shows detailed info for the first 25 members' do
    within("#0.character") do
      expect(page).to have_xpath("//img[@src = 'https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128']")
      expect(page).to have_content("Allies: Fire Nation")
      expect(page).to have_content("Enemies: Aang")
      expect(page).to have_content("Affiliations: Fire Nation")
    end

    within("#24.character") do
      expect(page).to have_xpath("//img[@src = 'https://vignette.wikia.nocookie.net/avatar/images/8/8a/Fire_Navy_officer.png/revision/latest?cb=20140519094412']")
      expect(page).to have_content("Allies: Admiral")
      expect(page).to have_content("Enemies: Aang")
      expect(page).to have_content("Affiliations: Fire Nation Navy")
    end

    expect(all('ul.detailed_info').count).to eq(25)
  end

  it 'does not show detailed info for other members' do
    within("#25.character") do
      expect(page).to_not have_css('img')
      expect(page).to_not have_content("Allies:")
      expect(page).to_not have_content("Enemies:")
      expect(page).to_not have_content("Affiliations:")
    end

    within("#96.character") do
      expect(page).to_not have_css('img')
      expect(page).to_not have_content("Allies:")
      expect(page).to_not have_content("Enemies:")
      expect(page).to_not have_content("Affiliations:")
    end
  end
end