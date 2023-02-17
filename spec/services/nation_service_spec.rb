require 'rails_helper'

RSpec.describe NationService do
  xit 'returns all members from a nation' do
    nation = NationService.get_all_nation_members

    expect(nation).to be_a(Hash)

  end
end