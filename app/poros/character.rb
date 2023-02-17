class Character
  attr_reader :name,
              :allies,
              :enemies,
              :photoUrl,
              :affiliation
  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
    @affiliation = data[:affiliation]
  end
end