require 'rails_helper'

RSpec.describe 'welcome page' do

  it 'can take me to a selected nations search page' do
    visit root_path

    select 'Fire Nation'
    click_on 'Search For Members'

    expect(current_path).to eq('/search')
  end

  it 'has the amount of characters shown' do
    visit root_path

    select 'Fire Nation'
    click_on 'Search For Members'

    expect(page).to have_content(20)
    # expect(page).to have_content(25)
    # expect(page).to have_content(97)
  end
  it 'has the characters info' do
    visit root_path

    select 'Fire Nation'
    click_on 'Search For Members'

    expect(page).to have_content("Afiko")
    expect(page).to have_content("Aang")
    expect(page).to have_content("Fire Nation")
    # expect(page).to have_content(25)
    # expect(page).to have_content(97)
  end
end