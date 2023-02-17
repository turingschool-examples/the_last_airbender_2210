require 'rails_helper'

RSpec.describe 'Search Index', type: :feature do
  describe 'as a visitor' do
    describe 'displays details about the population of the chosen nation' do
      it 'has a population count' do
        visit root_path

        select 'Fire Nation', from: 'nation'

        click_button 'Search For Members'

        expect(current_path).to eq(search_path)

        expect(page).to have_content('Population: 96')
      end
      it 'details first 25 members'
    end
  end
end
