require 'rails_helper'

RSpec.describe NationFascade do
  describe '#get_all_nation_members' do
    it 'returns a list of all nation members' do
      search_term = 'fire nation'

      nation = NationFascade.get_all_nation_members(search_term)

      expect(nation).to be_an(Array)

      character = nation.first

      expect(character).to be_a(Character)
      expect(character.name).to eq('46th Earth King')
      expect(character.photo).to eq('https://vignette.wikia.nocookie.net/avatar/images/5/51/46th_Earth_King.png/revision/latest?cb=20130627160441')
      expect(character.allies).to eq('Royal Earthbender Guards')
      expect(character.enemies).to eq('Chin')
      expect(character.affiliation).to eq(' Earth Kingdom Earth Kingdom Royal Family')
    end
  end
end