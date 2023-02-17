require 'rails_helper'

RSpec.describe Character do
  let!(:data) { { name: 'test', 
                  allies: ["friend", 'other'],
                  enemies: ['foe', 'other_foe'],
                  photoUrl: '/photo_location',
                  affiliation: "Water Tribe"} }
  let!(:character) { Character.new(data) }

  it 'exists and has readable attributes' do
    expect(character).to be_a Character
    expect(character.name).to eq 'test' 
    expect(character.allies).to eq 'friend, other' 
    expect(character.enemies).to eq 'foe, other_foe'
    expect(character.photoUrl).to eq '/photo_location' 
    expect(character.affiliation).to eq 'Water Tribe' 
  end
end
