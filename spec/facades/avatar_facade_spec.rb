require 'rails_helper'

RSpec.describe "Avatar Facade" do
  it "will return a list of nation members based on search params" do
    data = AvatarFacade.get_nation_members(25)
    member = data.first
    expect(data).to be_a(Array)
    expect(data.count).to eq(25)

    expect(member.name).to be_a(String)
    expect(member.photo).to be_a(String)
    expect(member.allies).to be_a(Array)
    expect(member.enemies).to be_a(Array)
    expect(member.affiliation).to be_a(String)
  end
end