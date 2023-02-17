require 'rails_helper'

RSpec.describe SearchResult do
  it 'can turn a json response into a ruby object' do
    json_response = File.read('spec/fixtures/fire_nation_members.json')

    stub_request(:get, "https://last-airbender-api.fly.dev/api/v1/characters?perPage=900&page=1&affiliation=fire+nation")
      .to_return(status: 200, body: json_response, headers: {})

    results = SearchService.search_nation("fire+nation")
    azula = SearchResult.new(results[1])

    expect(azula.name).to eq("Azula")
    expect(azula.allies).to eq(["Ozai", "Zuko "])
    expect(azula.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "])
    expect(azula.id).to eq("5cf5679a915ecad153ab68da")
    expect(azula.affiliation).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
    expect(azula.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
  end
end