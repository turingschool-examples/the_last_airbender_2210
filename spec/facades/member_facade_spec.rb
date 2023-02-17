require 'rails_helper'

RSpec.describe 'MemberFacade' do 
  it 'returns a collection of nation members' do 
    members = MemberFacade.all_members_data("fire+nation")

    expect(members).to be_an(Array)
    expect(members[0]).to be_a(Member)
    expect(members.count).to eq(97)
  end
end