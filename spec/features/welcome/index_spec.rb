require 'rails_helper'

RSpec.describe "welcome" do
  it 'searches for members' do
    visit '/'
    expect(page).to have_button ("Search For Members")
    select "Fire Nation", from: "nation"
    click_button "Search For Members"
    expect(current_path).to eq('/search')
    expect(page).to have_content("Fire Nation Members")
    expect(page).to have_content("Name: Afiko")
    expect(page).to_not have_content("Name: Kya (pilot)")
    expect(page).to have_content("There are 20 Members of Fire Nation")
  end
end
