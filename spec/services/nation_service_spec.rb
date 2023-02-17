require 'rails_helper'

RSpec.describe NationService do
  it 'returns all members from a nation' do
    search_term = 'fire nation'
    nation = NationService.get_all_nation_members_response(search_term)

    expect(nation).to be_an(Array)
    
    nation_data = nation.first

    expect(nation_data).to have_key :_id
    expect(nation_data[:_id]).to be_a(String)

    expect(nation_data).to have_key :allies
    expect(nation_data[:allies]).to be_an(Array)

    expect(nation_data).to have_key :enemies
    expect(nation_data[:enemies]).to be_an(Array)
    
    expect(nation_data).to have_key :name
    expect(nation_data[:name]).to be_a(String)
    
    expect(nation_data).to have_key :photoUrl
    expect(nation_data[:photoUrl]).to be_a(String)
    
    expect(nation_data).to have_key :affiliation
    expect(nation_data[:affiliation]).to be_a(String)
  end
end