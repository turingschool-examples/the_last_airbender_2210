require 'rails_helper'

RSpec.describe AvatarMemberFacade do
  it 'can return all avatar member objects' do
    expect(AvatarMemberFacade.all('Fire+Nation').first).to be_an_instance_of(AvatarMember)
  end
end
