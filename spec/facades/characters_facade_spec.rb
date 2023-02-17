require 'rails_helper'

RSpec.describe CharactersFacade do
  it 'can return members of the fire nation' do
    characters = CharactersFacade.characters_by_nation("Fire Nation")

    characters.each do |character|
      expect(character).to be_a(Character)
    end
  end
end