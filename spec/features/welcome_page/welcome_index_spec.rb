require 'rails_helper'

RSpec.describe 'welcome page' do

  it 'can take me to a selected nations search page' do
    visit root_path

    select 'Fire Nation'
    click_on 'Search For Members'

    expect(current_path).to eq('/search')
  end
end