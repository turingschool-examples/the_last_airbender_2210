require 'rails_helper'

RSpec.describe Nation do
  it 'creates nations poros based on attributes' do
    attr = {
      "_id": "5cf5679a915ecad153ab6906",
      "allies": [
          "Ty Lee"
      ],
      "enemies": [
          "Appa"
      ],
      "photoUrl": "https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819",
      "name": "Circus master",
      "affiliation": "Fire Nation circus"
    }
    nation = Nation.new(attr)

    expect(nation).to be_a(Nation)
    expect(nation.name).to eq("Circus master")
    expect(nation.enemies).to eq(["Appa"])
  end
end