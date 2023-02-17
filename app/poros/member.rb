class Member
  attr_reader :name, :allies, :enemies, :affiliation, :photo_url

  def initialize(attr)
    @name = attr[:name]
    @allies = attr[:allies]
    @enemies = attr[:enemies]
    @affiliation = attr[:affiliation]
    @photo_url = attr[:photoUrl]
  end
end