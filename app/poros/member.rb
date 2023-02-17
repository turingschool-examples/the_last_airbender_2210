class Member
  attr_reader :id, :name, :photo, :allies, :enemies, :affiliation

  def initialize(member_information)
    @id = member_information[:_id]
    @name = member_information[:name]
    @photo = member_information[:photoUrl]
    @allies = member_information[:allies]
    @enemies = member_information[:enemies]
    @affiliation = member_information[:affiliation]
  end
end