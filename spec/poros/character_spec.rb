require 'rails_helper'

RSpec.describe Character do 
  it 'exists and has attributes' do 
    data = {
      "_id": "5cf5679a915ecad153ab68cc",
      "allies": [
          "Fire Nation"
      ],
      "enemies": [
          "Aang"
      ],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
      "name": "Afiko",
      "affiliation": "Fire Nation"
    }

    character = Character.new(data)

    expect(character).to be_an_instance_of(Character)
    expect(character.name).to eq("Afiko")
    expect(character.image).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
    expect(character.allies).to eq("Fire Nation")
    expect(character.enemies).to eq("Aang")
    expect(character.affiliation).to eq("Fire Nation")

    expect(character.allies_check).to eq("Fire Nation")
    expect(character.enemies_check).to eq("Aang")
  end

  it 'will return None if no allies or enemies' do 
    data =  {
      "_id": "5cf5679a915ecad153ab691d",
      "allies": [],
      "enemies": [],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/1/16/Ember_Island_Players.png/revision/latest?cb=20130722113209",
      "name": "Ember Island Players",
      "affiliation": "Fire Nation"
    }

    character = Character.new(data)

    expect(character).to be_an_instance_of(Character)
    expect(character.allies_check).to eq("None")
    expect(character.enemies_check).to eq("None")
  end
end