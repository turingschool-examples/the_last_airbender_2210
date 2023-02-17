require 'rails_helper'

RSpec.describe AvatarFacade do 
  it 'can return the collection of characters' do 
    characters = AvatarFacade.all_characters_by_affiliation("Fire Nation")

    expect(characters).to be_an Array 
    expect(characters.count).to eq 97
    characters.each do |char|
      expect(char).to be_an_instance_of(Character)
    end
  end

  it 'can return the first 25 characters' do 
    characters = AvatarFacade.first_25("Fire Nation")

    expect(characters).to be_an Array 
    expect(characters.count).to eq 25
    characters.each do |char|
      expect(char).to be_an_instance_of(Character)
    end
  end
end