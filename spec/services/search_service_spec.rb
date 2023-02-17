require 'rails_helper'

RSpec.describe SearchService do
  it 'returns json after calling api' do
    json_response = File.read('spec/fixtures/fire_nation_members.json')

    stub_request(:get, "https://last-airbender-api.fly.dev/api/v1/characters?perPage=900&page=1&affiliation=fire+nation")
      .to_return(status: 200, body: json_response, headers: {})

    response = SearchService.search_nation("fire+nation")
    expect(response).to be_a(Array)
    expect(response.count).to eq(97)
  end
end