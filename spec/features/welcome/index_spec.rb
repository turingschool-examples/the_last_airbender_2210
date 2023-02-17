require 'rails_helper'

RSpec.describe 'welcome page' do
  it 'contains a form to search member by their nation' do
    visit root_path

    select "Fire Nation", from: "nation"

    click_button "Search For Members"

    expect(current_path).to eq(search_path)
  end
end