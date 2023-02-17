require 'rails_helper'

RSpec.describe AvatarFacade, type: :model do
  describe 'creates member instances' do
    it 'can create members' do
      @members = AvatarFacade.nation_members("fire+nation")

      expect(@members.count).to eq(97)
      expect(@members.first).to be_a(NationMember)
      expect(@members.first.name).to eq("Afiko")
    end
  end
end