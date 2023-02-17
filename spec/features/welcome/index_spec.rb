require 'rails_helper'

RSpec.describe 'Welcome Index' do
  it 'redirects to search index after clicking the dropdown' do
    visit root_path
    select 'Fire Nation', from: 'nation'
    click_button 'Search For Members'

    expect(current_path).to eq(search_path)
  end
end