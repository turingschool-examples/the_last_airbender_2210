require 'rails_helper'

RSpec.describe "Welcome Index" do
  it "will take you to the search page based on nation" do
    visit root_path

    click_button "Search For Members"

    expect(current_path).to eq(search_path)
  end
end