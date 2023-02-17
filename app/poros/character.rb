class Character 
  attr_reader :name, :allies, :enemies, :photoUrl, :affliation

  def initialize(character_data)
    @name = character_data[:name]
    @allies = character_data[:allies]
    @enemies = character_data[:enemies]
    @photoUrl = character_data[:photoUrl]
    @affliation = character_data[:affliation]
  end
end
