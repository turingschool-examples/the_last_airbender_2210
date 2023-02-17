class Character
  attr_reader :name, :photo, :allies, :enemies, :affiliation
  
  def initialize(data)
    @name = data[:name]
    @photo = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
  end
end