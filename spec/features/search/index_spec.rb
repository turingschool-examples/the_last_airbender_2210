require 'rails_helper'

RSpec.describe 'The Search Results Page', type: :feature do
  describe 'search results' do
    it 'shows results from fire nation selection' do
      visit '/'

      select('Fire Nation', from: :nation)

      click_button('Search For Members')
      expect(current_path).to eq('/search')

      expect(page).to have_content("fire+nation")
      expect(page).to have_content("Azula")
    end
  end
end