require 'rails_helper'

RSpec.describe 'Search results page' do 
  describe 'when I search for a member by their affiliation' do 
    it 'shows the total number of people living in that nation' do 
      # visit root_path 

      # select 'Fire Nation', :from => 'nation'
      # click_button "Search for Members"

      # expect(current_path).to eq '/search'

      visit '/search'
    end

    xit 'should have detailed information for the first 25 members' do 

    end
  end
end