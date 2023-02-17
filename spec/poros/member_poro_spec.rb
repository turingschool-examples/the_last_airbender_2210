require 'rails_helper'

RSpec.describe Member do
  it 'creates member object' do
    attr = {
      "_id": '5cf5679a915ecad153ab68c8',
      "allies": [
        'Royal Earthbender Guards'
      ],
      "enemies": [
        'Chin'
      ],
      "photoUrl": 'https://vignette.wikia.nocookie.net/avatar/images/5/51/46th_Earth_King.png/revision/latest?cb=20130627160441',
      "name": '46th Earth King',
      "affiliation": ' Earth Kingdom Earth Kingdom Royal Family'
    }

    member = Member.new(attr)

    expect(member).to be_a Member
    expect(member.name).to eq('46th Earth King')
    expect(member.allies).to eq(['Royal Earthbender Guards'])
    expect(member.enemies).to eq(['Chin'])
    expect(member.affiliation).to eq(' Earth Kingdom Earth Kingdom Royal Family')
    expect(member.photo_url).to eq('https://vignette.wikia.nocookie.net/avatar/images/5/51/46th_Earth_King.png/revision/latest?cb=20130627160441')
  end
end
