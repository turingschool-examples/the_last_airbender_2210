require 'rails_helper'

RSpec.describe MemberService do
  it 'can return a response with members by nation' do
    
    members_data = MemberService.get_all_members("Fire Nation")

    expect(members_data).to be_an(Array)

    members = members_data[0]

    expect(members).to have_key(:_id)
    expect(members[:_id]).to be_a(String)

    expect(members).to have_key(:allies)
    expect(members[:allies]).to be_an(Array)

    expect(members).to have_key(:enemies)
    expect(members[:enemies]).to be_a(Array)

    expect(members).to have_key(:photoUrl)
    expect(members[:photoUrl]).to be_a(String)
 
    expect(members).to have_key(:name)
    expect(members[:name]).to be_a(String)
 
    expect(members).to have_key(:affiliation)
    expect(members[:affiliation]).to be_a(String)
  end
end 