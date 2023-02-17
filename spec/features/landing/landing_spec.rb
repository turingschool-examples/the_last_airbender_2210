# As a user,
# When I visit "/"
# And I Select "Fire Nation" from the select field
# (Note: Use the existing select field)
# And I click "Search For Members"
# Then I should be on page "/search"
# Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
# And I should see a list with the detailed information for the first 25 members of the Fire Nation.

# And for each of the members I should see:
# - The name of the member (and their photo, if they have one)
# - The list of allies or "None"
# - The list of enemies or "None"
# - Any affiliations that the member has

require 'rails_helper'

RSpec.describe 'Landing Page' do
  describe 'As a user' do
    describe "When I visit '/'" do
      before :each do 
        visit '/'
      end
      describe "And I select 'Fire Nation' from the select field and I click 'Search For Members'" do
        before :each do
          select("Fire Nation", from: :nation)
          click_button("Search For Members")
        end
        it 'Then I should be on page "/search"' do
          expect(current_path).to eq '/search'
        end

        it 'Then I should see the total number of people who live in the Fire Nation. (should be close to 100)' do
          expect(page).to have_content("Total Number of People: 97")
        end

        it 'And I should see a list with the detailed info for the first 25 members of the Fire Nation' do
          expect(page).to have_css(".citizen", count:25)
        end

        it 'And for each of the members I should see:
          - The name of the member (and their photo, if they have one)
          - The list of allies or "None"
          - The list of enemies or "None"
          - Any affiliations that the member has' do
          within '.citizen#member-5cf5679a915ecad153ab68cc' do
            expect(page).to have_content("Afiko")
            expect(page).to have_content("Allies\nFire Nation")
            expect(page).to have_content("Enemies\nAang")
            expect(page).to have_content("Affiliations Fire Nation")
          end
        end
      end
    end
  end
end