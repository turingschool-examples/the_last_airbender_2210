require 'rails_helper'

RSpec.describe AvatarService do
  describe '#call' do
    it 'returns a parsed json response from the affliation endpoint' do
      response = AvatarService.new.call('/api/v1/characters?affiliation=Fire+Nation')

      expect(response).to be_a Array
      expect(response[0][:allies]).to be_a Array
      expect(response[0][:allies][0]).to be_a String
      expect(response[0][:enemies]).to be_a Array
      expect(response[0][:enemies][0]).to be_a String
      expect(response[0][:photoUrl]).to be_a String
      expect(response[0][:name]).to be_a String
      expect(response[0][:affiliation]).to be_a String
    end

    it 'returns a parsed json response from the enemies endpoint' do
      response = AvatarService.new.call('/api/v1/characters?enemies=Aang')

      expect(response).to be_a Array
      expect(response[0][:allies]).to be_a Array
      expect(response[0][:allies][0]).to be_a String
      expect(response[0][:enemies]).to be_a Array
      expect(response[0][:enemies][0]).to be_a String
      expect(response[0][:photoUrl]).to be_a String
      expect(response[0][:name]).to be_a String
      expect(response[0][:affiliation]).to be_a String
    end

    it 'returns a parsed json response from the allies endpoint' do
      response = AvatarService.new.call('/api/v1/characters?allies=')

      expect(response).to be_a Array
      expect(response[0][:allies]).to be_a Array
      expect(response[0][:allies][0]).to be_a String
      expect(response[0][:enemies]).to be_a Array
      expect(response[0][:enemies][0]).to be_a String
      expect(response[0][:photoUrl]).to be_a String
      expect(response[0][:name]).to be_a String
      expect(response[0][:affiliation]).to be_a String
    end
  end
end
