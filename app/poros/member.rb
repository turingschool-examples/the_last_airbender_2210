class Member
  attr_reader :name, :photo, :allies, :enemies, :affiliation

  def initialize(member_information)
    @name = member_information[:name]
    @photo = member_information[:photoUrl]
    @allies = member_information[:allies]
    @enemies = member_information[:enemies]
    @affiliation = member_information[:affiliation]
  end
end