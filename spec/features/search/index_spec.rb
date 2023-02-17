require 'rails_helper'

RSpec.describe 'search page' do
  before(:each) do
    stub_request(:get, 'https://last-airbender-api.fly.dev/api/v1/characters?affiliation=fire%20nation&page=1&perPage=1000')
      .to_return(status: 200, body: File.read('spec/fixtures/fire_nation_members.json'))
  end

  it 'is linked from the landing page' do
    visit root_path

    select 'Fire Nation', from: :nation
    click_on 'Search For Members'

    expect(current_path).to eq(search_path)
  end

  it 'returns population of the nation, 25 characters with their name, image, allies, enemies, and affiliation' do
    visit root_path

    select 'Fire Nation', from: :nation
    click_on 'Search For Members'

    expect(page).to have_content('Population of Fire nation: 97')
    expect(page).to have_css('.character', count: 25)
    expect(page).to have_content('Name: Afiko Allies: Fire Nation Enemies: Aang Affiliation: Fire Nation')
    expect(page).to have_css("img[src*='https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128']")
  end
end
