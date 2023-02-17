class Member
  attr_reader :name,
              :allies,
              :enemies,
              :photo,
              :affiliation

  def initialize(attributes)
    @name = attributes[:name]
    @allies = attributes[:allies][0]
    @enemies = attributes[:enemies][0]
    @photo = attributes[:photoUrl]
    @affiliation = attributes[:affiliation]
  end
end