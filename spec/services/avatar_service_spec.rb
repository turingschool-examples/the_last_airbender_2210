require 'rails_helper'

RSpec.describe AvatarService do 
  it 'can return the characters by their affiliation' do 
    response = AvatarService.get_characters_by_affiliation("Fire Nation")

    expect(response).to be_an Array 
    expect(response[0]).to be_a Hash 
    
    expect(response[0]).to have_key(:_id)
    expect(response[0][:_id]).to be_a String

    expect(response[0]).to have_key(:allies) 
    expect(response[0][:allies]).to be_an Array
    
    expect(response[0]).to have_key(:enemies) 
    expect(response[0][:enemies]).to be_an Array
   
    expect(response[0]).to have_key(:photoUrl) 
    expect(response[0][:photoUrl]).to be_a String

    expect(response[0]).to have_key(:name) 
    expect(response[0][:name]).to be_a String

    expect(response[0]).to have_key(:affiliation) 
    expect(response[0][:affiliation]).to be_a String
  end
end