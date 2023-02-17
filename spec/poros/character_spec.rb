require 'rails_helper'

RSpec.describe Character do
  it 'exists' do
    data = {
      "_id": "5cf5679a915ecad153ab68c8",
      "allies": [
          "Royal Earthbender Guards"
      ],
      "enemies": [
          "Chin"
      ],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/5/51/46th_Earth_King.png/revision/latest?cb=20130627160441",
      "name": "46th Earth King",
      "affiliation": " Earth Kingdom Earth Kingdom Royal Family"
    }

    character = Character.new(data)

    expect(character).to be_a(Character)
    expect(character.name).to eq('46th Earth King')
    expect(character.photo).to eq('https://vignette.wikia.nocookie.net/avatar/images/5/51/46th_Earth_King.png/revision/latest?cb=20130627160441')
    expect(character.allies).to eq('Royal Earthbender Guards')
    expect(character.enemies).to eq('Chin')
    expect(character.affiliation).to eq(' Earth Kingdom Earth Kingdom Royal Family')
  end
end