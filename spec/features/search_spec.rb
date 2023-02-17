require 'rails_helper'

RSpec.describe "search results page" do
  it 'allows me to search for the members of the fire nation' do
    visit root_path
    expect(page).to have_field(:nation)
    select "Fire Nation", from: :nation
    click_button("Search For Members")
    expect(current_path).to eq(search_path)
  end


end