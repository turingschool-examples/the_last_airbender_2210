require 'rails_helper'

RSpec.describe Character do
  describe '#initialize' do
    it 'exists and has attributes' do
      data = {
        :_id=>"5cf5679a915ecad153ab68cc",
        :allies=>["Fire Nation"],
        :enemies=>["Aang"],
        :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
        :name=>"Afiko",
        :affiliation=>"Fire Nation"
      }
      character = Character.new(data)
      expect(character.id).to eq("5cf5679a915ecad153ab68cc")
      expect(character.name).to eq("Afiko")
      expect(character.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
      expect(character.allies).to eq(["Fire Nation"])
      expect(character.enemies).to eq(["Aang"])
    end

    it 'returns None if allies or enemies is empty' do
      data = {
        :_id=>"5cf5679a915ecad153ab68cc",
        :allies=>[""],
        :enemies=>[],
        :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
        :name=>"Afiko",
        :affiliation=>"Fire Nation"
      }
      character = Character.new(data)
      expect(character.allies).to eq("None")
      expect(character.enemies).to eq("None")
    end
  end
end