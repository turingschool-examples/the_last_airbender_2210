require 'rails_helper'

RSpec.describe CharactersService do
  it 'returns characters' do
    characters = CharactersService.nation_search('Fire Nation')

    expect(characters.count).to eq(97)
    expect(characters).to be_a(Array)
    characters.each do |character|
      expect(character).to have_key(:_id)
      expect(character[:_id]).to be_a(String)

      expect(character).to have_key(:allies)
      expect(character[:allies]).to be_a(Array)

      expect(character).to have_key(:enemies)
      expect(character[:enemies]).to be_a(Array)

      expect(character).to have_key(:name)
      expect(character[:name]).to be_a(String)

      expect(character).to have_key(:affiliation)
      expect(character[:affiliation]).to be_a(String)
    end
    expect(characters[0]).to have_key(:photoUrl)
  end
end