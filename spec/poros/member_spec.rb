require 'rails_helper'

RSpec.describe Member do
  before :each do
    @members = AvatarFacade.get_nation_members("fire+nation", 25)
    @member = @members[0]
  end
  it 'exists and has attributes' do
    expect(@member).to be_a(Member)
    expect(@member.id).to eq("5cf5679a915ecad153ab68cc")
    expect(@member.name).to eq("Afiko")
    expect(@member.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
    expect(@member.allies).to eq(["Fire Nation"])
    expect(@member.enemies).to eq(["Aang"])
  end
end