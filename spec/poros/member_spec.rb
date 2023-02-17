require 'rails_helper'

RSpec.describe 'Member' do 
  it 'has attributes' do 
    members = MemberFacade.all_members_data("fire+nation")

    expect(members).to be_an(Array)
    expect(members.size).to eq(97)
    members.each do |member|
      expect(member.name).to be_a(String)
      expect(member.allies).to be_an(Array)
      expect(member.enemies).to be_an(Array)
      expect(member.affiliation).to be_a(String)
    end
  end
end