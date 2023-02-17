require 'rails_helper'

RSpec.describe Character do
  let!(:data) { {} }
  let!(:character) { Character.new(data) }

  it 'exists and has readable attributes' do
    expect(character).to be_a Character
    expect(character.name).to eq '' 
    expect(character.allies).to eq '' 
    expect(character.enemies).to eq '' 
    expect(character.photoUrl).to eq '' 
    expect(character.affiliation).to eq '' 
  end
end
