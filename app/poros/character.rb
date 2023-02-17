class Character 
  attr_reader :name, :allies, :enemies, :photoUrl, :affiliation

  def initialize(character_data)
    @name = character_data[:name]
    @allies = character_data[:allies]
    @enemies = character_data[:enemies]
    @photoUrl = character_data[:photoUrl]
    @affiliation = character_data[:affiliation]
  end
end
