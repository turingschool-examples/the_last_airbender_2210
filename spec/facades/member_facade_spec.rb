require 'rails_helper'

RSpec.describe MemberFacade do
  it 'can return a collection of members by nation and make a poros' do
    members = MemberFacade.get_members("Fire Nation")

    expect(members).to be_a(Array)
    expect(members[0]).to be_a(Member)
  end
end