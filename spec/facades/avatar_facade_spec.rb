require 'rails_helper'

RSpec.describe AvatarFacade do
  describe 'class methods' do
    describe '.top_25_characters_by_affilition' do
      it 'returns an array of Character objects given a affilition query' do
        characters = AvatarFacade.top_25_characters_by_affiliation('fire nation')
        expect(characters).to be_a(Array)
        expect(characters.size).to eq(25)
        characters.each do |character|
          expect(character).to be_a(Character)
        end
      end
    end

    describe '.all_characters_by_affiliation_count' do
      it 'returns an integer value for the total number of characters given an affilition' do
        count = AvatarFacade.all_characters_by_affiliation_count('fire nation')
        expect(count).to be_a(Integer)
      end
    end
  end
end