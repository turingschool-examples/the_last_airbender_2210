require 'rails_helper'

RSpec.describe 'The Search Results Page', type: :feature do
  describe 'search results' do
    it 'shows results from fire nation' do
      visit '/'

      select('Fire Nation', from: :nation)

      click_button('Search For Members')
      expect(current_path).to eq('/search')
      save_and_open_page
      expect(page).to have_content('Nation')
    end
  end
end