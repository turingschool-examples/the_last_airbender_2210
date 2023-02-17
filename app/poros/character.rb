class Character
  attr_reader :name, :photo_url, :allies, :enemies, :affiliation

  def initialize(character_info)
    @id = character_info[:_id]
    @allies = character_info[:allies]
    @enemies = character_info[:enemies]
    @photo_url = character_info[:photoUrl]
    @name = character_info[:name]
    @affiliation = character_info[:affiliation]
  end
end