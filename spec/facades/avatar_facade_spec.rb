require 'rails_helper'

RSpec.describe AvatarFacade, type: :facade do
  context 'call nation members' do
    it 'nation_search' do
      expect(AvatarFacade.nation_search('fire nation')).to all be_a(Member)
      expect(AvatarFacade.nation_search('fire nation').count).to eq(97)
    end
  end
end