class Member 
  attr_reader :member_name,
              :photo,
              :allies,
              :enemies,
              :affiliation

  def initialize(attributes)
    @member_name = attributes[:name]
    @photo = attributes[:photoUrl]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
  end
end