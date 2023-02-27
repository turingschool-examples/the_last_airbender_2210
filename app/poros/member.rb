class Member
  attr_reader :affiliation,
              :allies,
              :enemies,
              :name,
              :photo_url

  def initialize(data)
    @affiliation = data[:affiliation]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @name = data[:name]
    @photo_url = data[:photoUrl]
  end
end