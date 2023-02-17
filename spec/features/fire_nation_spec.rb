require 'rails_helper'

RSpec.describe "Fire Nation Search" do
  it 'displays the total count of fire nation members, and details on the first 25' do
    json_response = File.read('spec/fixtures/fire_nation_members.json')

    stub_request(:get, "https://last-airbender-api.fly.dev/api/v1/characters?perPage=900&page=1&affiliation=fire+nation")
      .to_return(status: 200, body: json_response, headers: {})

    visit "/"
    select "Fire Nation"
    click_button "Search"

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Total Members: 97")
    expect(page).to have_content("Name: ", count: 25)
    within "div#5cf5679a915ecad153ab68da" do
      expect(page).to have_content("Name: Azula")
      expect(page).to have_content("Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa")
      expect(page).to have_content("Allies: Ozai, Zuko")
      expect(page).to have_content("Affiliation: Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
      expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941']")
    end
  end
end