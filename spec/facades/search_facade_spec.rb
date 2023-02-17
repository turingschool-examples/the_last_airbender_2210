require 'rails_helper'

RSpec.describe SearchFacade do
  it 'turns a json response into SearchResult objects' do
    json_response = File.read('spec/fixtures/fire_nation_members.json')

    stub_request(:get, "https://last-airbender-api.fly.dev/api/v1/characters?perPage=900&page=1&affiliation=fire+nation")
      .to_return(status: 200, body: json_response, headers: {})

    results = SearchFacade.get_search_results("fire+nation")
    results[0..24].each do |result|
      expect(result).to be_a(SearchResult)
    end
  end
end