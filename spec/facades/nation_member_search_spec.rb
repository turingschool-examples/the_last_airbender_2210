require 'rails_helper'

RSpec.describe 'MemberSearchFacade' do
  it 'should call the facade and retrieve search results' do
    search_nation = "fire+nation"

    results = MemberSearchFacade.member_search(search_nation)

    expect(results).to be_an Array

    member = results.first
    expect(member).to be_a Member
    expect(member.name).to eq("Afiko")
    expect(member.allies).to be_an Array
    expect(member.allies.first).to eq("Fire Nation")
    expect(member.enemies).to be_an Array
    expect(member.enemies.first).to eq("Aang")
    expect(member.affiliations).to eq(nil)
  end
end