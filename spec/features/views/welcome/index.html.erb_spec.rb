require 'rails_helper'

RSpec.describe 'Welcome Index' do
  before(:each) do
    visit root_path
  end

  it 'displays title and search text' do
    expect(page).to have_content('The Four Nations')
    expect(page).to have_content('Search For Members by their Nation')
  end

  it 'has search button' do
    expect(page).to have_button('Search For Members')
    expect(page).to have_select(name: 'nation')
  end

  it 'routes to search page when search button clicked' do
    select("Fire Nation", from: "nation")
    click_button("Search For Members")

    expect(current_path).to eq(search_path)
  end
end
