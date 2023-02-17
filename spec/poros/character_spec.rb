require 'rails_helper'

RSpec.describe Character do
  it 'exist and has attributes' do
    character = CharactersFacade.characters_by_nation('Fire Nation')[0]
    
    expect(character).to be_a(Character)
    expect(character.name).to eq("Afiko")
    expect(character.id).to eq("5cf5679a915ecad153ab68cc")
    expect(character.allies).to eq(["Fire Nation"])
    expect(character.enemies).to eq(["Aang"])
    expect(character.affiliation).to eq("Fire Nation")
    expect(character.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
  end
end