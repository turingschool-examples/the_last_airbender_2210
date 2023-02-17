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
  end
end