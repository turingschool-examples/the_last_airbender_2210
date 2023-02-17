require 'rails_helper'

RSpec.describe Member, type: :poros do
  context 'initialize attributes' do
    it 'contains attributes' do
      member = Member.new(
        {
          name: "name",
          allies: ["ally1", "ally2"],
          affiliation: 'affiliation',
          enemies: ["enemy1"],
          photoUrl: "photo_url string"
        }
      )
      expect(member).to be_a Member
      expect(member.name).to be_a String
      expect(member.name).to eq('name')
      
      expect(member.allies).to be_an Array
      expect(member.allies).to eq(["ally1", "ally2"])
      
      expect(member.affiliation).to be_a String
      expect(member.affiliation).to eq('affiliation')
      
      expect(member.enemies).to be_an Array
      expect(member.enemies).to eq(["enemy1"])

      expect(member.photo_url).to be_a String
      expect(member.photo_url).to eq('photo_url string')
    end
  end
end