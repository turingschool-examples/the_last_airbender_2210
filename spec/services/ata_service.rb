require "rails_helper"

RSpec.describe ATAService do
  describe 'API calls' do
    it 'gets members by affiliation nation' do
      response = ATAService.get_members_by_affiliation("Fire Nation")

      expect(response).to be_a(Array)

      response.each do |character|
        expect(character).to have_key(:_id)
        expect(character).to have_key(:allies)
        expect(character).to have_key(:enemies)
        # expect(character).to have_key(:photoUrl)
        expect(character).to have_key(:name)
        expect(character).to have_key(:affiliation)
      end
    end
  end
end