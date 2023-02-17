require 'rails_helper'

RSpec.describe "search results page" do
  before :each do
    fire_response = File.read('spec/fixtures/fire_nation_response.json')
    stub_request(:get, "https://last-airbender-api.fly.dev/api/v1/characters?affiliation=fire+nation")
      .to_return(status: 200, body: fire_response)
    visit root_path
    expect(page).to have_field(:nation)
    select "Fire Nation", from: :nation
    click_button("Search For Members")
  end

  it 'allows me to search for the members of the fire nation' do
    visit root_path
    expect(page).to have_field(:nation)
    select "Fire Nation", from: :nation
    click_button("Search For Members")
    expect(current_path).to eq(search_path)
  end

  it 'displays the total number of members of the fire nation' do
    expect(page).to have_content("Nation Members: 97")
  end

  it 'should display the first 25 members of the fire nation with their details' do
    within "#members" do
      
    end

  end


end