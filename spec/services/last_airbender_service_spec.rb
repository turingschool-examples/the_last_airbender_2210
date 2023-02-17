require 'rails_helper' 

RSpec.describe 'LastAirbenderService' do 
  describe '.get_all_members' do 
    it 'returns all member data based on nation arugument' do 
      members_response = LastAirbenderService.get_all_members("fire+nation")

      expect(members_response).to be_an(Array)
      expect(members_response[0]).to have_key(:name)
      expect(members_response[0]).to have_key(:photoUrl)
      expect(members_response[0]).to have_key(:allies)
      expect(members_response[0]).to have_key(:enemies)
      expect(members_response[0]).to have_key(:affiliation)
    end
  end
end