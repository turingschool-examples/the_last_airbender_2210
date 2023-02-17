'
As a user,
When I visit "/"
And I Select "Fire Nation" from the select field
(Note: Use the existing select field)
And I click "Search For Members"
Then I should be on page "/search"
Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
And I should see a list with the detailed information for the first 25 members of the Fire Nation.

And for each of the members I should see:
- The name of the member (and their photo, if they have one)
- The list of allies or "None"
- The list of enemies or "None"
- Any affiliations that the member has
'

require 'rails_helper'

RSpec.describe 'Search Index' do
  before(:each) do
    visit root_path
    select("Fire Nation", from: "nation")
    click_button("Search For Members")
  end

  it 'displays title' do
    expect(page).to have_content('Search Results')
  end

  it 'lists members of nation selected' do
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