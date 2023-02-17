require 'rails_helper'

RSpec.describe Character do
  it "character exists and has attributes" do
    data = ({id: 1, allies: ["Fire Nation"], enemies: ["Aang"], photoUrl: "website.com", name: "Afiko", affiliation: "Fire Nation"})
    character1 = Character.new(data)

    expect(character1).to be_instance_of(Character)
    expect(character1.name).to eq("Afiko")
    expect(character1.enemies).to eq(["Aang"])
    expect(character1.allies).to eq(["Fire Nation"])
  end
end