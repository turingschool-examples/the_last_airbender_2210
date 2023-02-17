class Member
  attr_reader :name,
              :allies,
              :enemies,
              :photo,
              :affiliation

  def initialize(attributes)
    @name = attributes[:name]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @photo = attributes[:photoUrl]
    @affiliation = attributes[:affiliation]
  end
end