require 'rails_helper'

RSpec.describe 'search index' do
  describe 'when i visit /search' do
    it 'should display the characters name' do
      visit search_path
      
      expect(page).to have_content('Afiko')
      expect(page).to have_content('Azula')
      expect(page).to have_content('Azulon')
      expect(page).to have_content('Bujing')
    end

    it 'should display the characters allies' do
      visit search_path

      expect(page).to have_content('Fire Nation')
      expect(page).to have_content('Azula')
      expect(page).to have_content('Fire Nation Navy')
    end

    it 'should display the characters enemies' do
      visit search_path

      expect(page).to have_content('Aang')
      expect(page).to have_content('Water Tribes')
      expect(page).to have_content('Iroh')
      expect(page).to have_content('Ozai')
    end

    it 'should display the characters affiliations' do
      visit search_path

      # within('#aff') do
        expect(page).to have_content('Fire Nation')
        expect(page).to have_content('Fire Nation military')
        # expect(page).to_not have_content('Water Tribe')
        # expect(page).to_not have_content('Earth Kingdom')
      # end
    end
  end
end