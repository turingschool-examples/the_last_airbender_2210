require 'rails_helper'

RSpec.describe AvatarService, type: :service do
  context 'class methods' do
    it 'returns all members affiliated with a nation' do
      search = AvatarService.nation_search('fire nation')
      
      expect(search).to be_an Array

      expect(search.first).to be_a Hash

      expect(search.first).to have_key :allies
      expect(search.first[:allies]).to be_an Array

      expect(search.first).to have_key :enemies
      expect(search.first[:enemies]).to be_an Array
      
      expect(search.first).to have_key :photoUrl
      expect(search.first[:photoUrl]).to be_a String
      
      expect(search.first).to have_key :name
      expect(search.first[:name]).to be_a String
      
      expect(search.first).to have_key :affiliation
      expect(search.first[:affiliation]).to be_a String

      expect(search.first).to have_key :affiliation
      expect(search.first[:affiliation]).to be_a String
    end
  end
end