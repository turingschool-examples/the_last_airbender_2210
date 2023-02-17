require 'rails_helper'

RSpec.describe 'Search Index Page' do
  it 'can search for members by nation and return the number of people who live on this nation' do
    visit root_path

    select("Fire Nation", from: :nation)
    click_on("Search For Members")

    expect(current_path).to eq(search_path)
    expect(page).to have_content("Total population: 97")
  end

  it 'displays 25 members information' do
    visit root_path

    select("Fire Nation", from: :nation)
    click_on("Search For Members")

    expect(current_path).to eq(search_path)
    expect(page).to have_css('li', count: 25)

    within("#member") do
      expect(page).to have_content("Afiko")
      expect(page).to have_content("Fire Nation")
      expect(page).to have_content("Aang")
    end
  end
end