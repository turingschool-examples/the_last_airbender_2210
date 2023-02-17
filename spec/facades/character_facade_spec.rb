require 'rails_helper'

RSpec.describe CharacterFacade do
  it 'can return a collection of character objects by nation' do
    characters ||= CharacterFacade.by_nation('Fire Nation')

    expect(characters).to be_an Array
    expect(characters.first).to be_a Character
    expect(characters.last).to be_a Character
  end
end
