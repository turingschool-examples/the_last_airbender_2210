require 'rails_helper'

RSpec.describe CharacterService do
  it "can return multiple character's data based on affiliation" do
    response ||= CharacterService.by_nation('Fire Nation')

    expect(response).to be_an Array
    expect(response.first).to be_a Hash
    expect(response.first[:_id]).to eq('5cf5679a915ecad153ab68cc')
    expect(response.first[:allies]).to eq(['Fire Nation'])
    expect(response.first[:enemies]).to eq(['Aang'])
    expect(response.first[:photoUrl]).to eq('https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128')
    expect(response.first[:name]).to eq('Afiko')
    expect(response.first[:affiliation]).to eq('Fire Nation')

    expect(response.last).to be_a Hash
    expect(response.last[:_id]).to eq('5cf5679a915ecad153ab6ab8')
    expect(response.last[:allies]).to eq(['Fire Nation soldiers'])
    expect(response.last[:enemies]).to eq(['Aang'])
    expect(response.last[:photoUrl]).to eq('https://vignette.wikia.nocookie.net/avatar/images/a/af/Zuko_pilot.png/revision/latest?cb=20130126192023')
    expect(response.last[:name]).to eq('Zuko (pilot)')
    expect(response.last[:affiliation]).to eq('Fire Nation')
  end
end
