require 'rails_helper'

RSpec.describe NationFascade do
  describe '#get_all_nation_members' do
    it 'returns a list of all nation members' do
      search_term = 'fire nation'

      nation = NationFascade.get_all_nation_members(search_term)

      expect(nation).to be_an(Array)

      character = nation.first

      expect(character).to be_a(Character)
      expect(character.name).to eq('Afiko')
      expect(character.photo).to eq('https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128')
      expect(character.allies).to eq(['Fire Nation'])
      expect(character.enemies).to eq(['Aang'])
      expect(character.affiliation).to eq('Fire Nation')
    end
  end
end