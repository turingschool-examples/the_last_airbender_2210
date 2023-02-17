require 'rails_helper'

RSpec.describe "when I visit '/'" do
    describe "and I select Fire Nation from the select field and click 'Search for Members'" do
        it 'should take me to /search where I should see the total number of people who live in the fire nation' do
            visit '/'

            expect(page).to have_field(:nation)
            select('Fire Nation', from: :nation)
            click_button('Search For Members')
            expect(current_path).to eq('/search')
        end
        
        it 'has a list with detailed information for the first 25 members of the Fire Nation' do
            
        end
    end
end