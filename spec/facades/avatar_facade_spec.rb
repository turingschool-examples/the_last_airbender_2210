require 'rails_helper'

RSpec.describe AvatarFacade do
  before(:each) do
    stub_request(:get, 'https://last-airbender-api.fly.dev/api/v1/characters?affiliation=fire%20nation&page=1&perPage=1000')
      .to_return(status: 200, body: File.read('spec/fixtures/fire_nation_members.json'))
  end

  describe '#nation()' do
    it 'returns an array of character objects' do
      characters = AvatarFacade.nation('fire+nation')

      characters.each do |character|
        expect(character).to be_a Character
      end
    end
  end
end
