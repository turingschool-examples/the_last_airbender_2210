require 'rails_helper'

RSpec.describe AvatarService do
  describe 'class methods' do
    describe '.character_data_by_affilition' do
      it 'returns an array of data for characters given a affiltion query' do
        character_data = AvatarService.character_data_by_affiliation('fire nation')
        expect(character_data).to be_a(Array)
        expect(character_data.first).to have_key(:photoUrl)
        expect(character_data.first[:photoUrl]).to be_a(String)
        
        character_data.each do |character|
          expect(character).to be_a(Hash)

          expect(character).to have_key(:_id)
          expect(character[:_id]).to be_a(String)

          expect(character).to have_key(:allies)
          expect(character[:allies]).to be_a(Array)
          character[:allies].each do |ally|
            expect(ally).to be_a(String)
          end

          expect(character).to have_key(:enemies)
          expect(character[:enemies]).to be_a(Array)
          character[:enemies].each do |enemy|
            expect(enemy).to be_a(String)
          end

          expect(character).to have_key(:name)
          expect(character[:name]).to be_a(String)

          expect(character).to have_key(:affiliation)
          expect(character[:affiliation]).to be_a(String)
        end
      end
    end
  end
end