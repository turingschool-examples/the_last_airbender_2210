require 'rails_helper'

RSpec.describe CharacterFacade do
  it "characters by affiliation" do
    characters = CharacterFacade.members_by_affiliation("Fire Nation")

    expect(characters).to be_a(Array)
    expect(characters.first).to be_instance_of(Character)
    expect(characters.first.name).to eq("Afiko")
  end

  it 'returns the number of total members in the affiliation' do
    count = CharacterFacade.total_members_in_affiliation("Fire Nation")
    expect(count).to eq(97)
  end
end