require 'rails_helper'

RSpec.describe 'welcome page' do
  it 'allows user to search for members by nation' do
    visit root_path

    select "Fire Nation", from: :nation
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
  end
end