require 'rails_helper'

RSpec.describe AvatarService do
  it 'can return all avatar member objects' do
    avatar_members = AvatarService.avatar_members

    expect(avatar_members).to be_a(Array)
    expect(avatar_members.first).to have_key(:_id)
    expect(avatar_members.first).to have_key(:name)
    expect(avatar_members.first).to have_key(:affiliation)
    expect(avatar_members.first).to have_key(:enemies)
    expect(avatar_members.first).to have_key(:photoUrl)
  end
end
