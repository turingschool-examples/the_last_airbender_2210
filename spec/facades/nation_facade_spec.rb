require 'rails_helper'

RSpec.describe 'NationFacade' do
  it 'should call facade and retrieve search results' do
    search_term = 'Fire Nation'
    results = NationFacade.nation_search(search_term)
    expect(results).to be_an(Array)
    next_nation = results.first
    expect(next_nation).to be_a(Nation)
  end
end