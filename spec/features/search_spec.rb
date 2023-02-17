require 'rails_helper'

RSpec.describe "when I visit '/'" do
    describe "and I select Fire Nation from the select field and click 'Search for Members'" do
        it 'should take me to /search where I should see the total number of people who live in the fire nation' do
            visit '/'

            expect(page).to have_field(:nation)
            select('Fire Nation', from: :nation)
            click_button('Search For Members')
            expect(current_path).to eq('/search')
            expect(page).to have_content('Characters in Nation: 97')
        end
        
        it 'has a list with detailed information for the first 25 members of the Fire Nation' do
            visit '/'

            expect(page).to have_field(:nation)
            select('Fire Nation', from: :nation)
            click_button('Search For Members')
            expect(current_path).to eq('/search')
            within('#Afiko') do
                expect(page).to have_content('Afiko')
                expect(page).to have_content('Allies: ["Fire Nation"]')
                expect(page).to have_content('Enemies: ["Aang"]')
                expect(page).to have_content('Affiliation: Fire Nation')
            end

            within('#Azula') do
                expect(page).to have_content('Azula')
                expect(page).to have_content('Allies: ["Ozai", "Zuko "]')
                expect(page).to have_content('Enemies: ["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "]')
                expect(page).to have_content("Affiliation: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
            end
        end
    end
end