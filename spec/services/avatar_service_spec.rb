require 'rails_helper'

RSpec.describe AvatarService, type: :model do
  describe 'The response' do
    it 'has a response from api call' do
      response = AvatarService.members_of('fire+nation')
      expect(response).to be_a(Array)
      expect(response[0]).to have_key(:name)
      expect(response[0]).to have_key(:allies)
      expect(response[0]).to have_key(:enemies)
      expect(response[0]).to have_key(:affiliation)   
      expect(response[0]).to have_key(:photoUrl)   
    end
  end
end