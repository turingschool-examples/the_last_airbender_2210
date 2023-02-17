class Character
  attr_reader :name, :photo_url, :allies, :enemies, :affiliations

  def initialize(character_info)
    @id = character_info[:_id]
    @allies = format_array(character_info[:allies])
    @enemies = format_array(character_info[:enemies])
    @photo_url = character_info[:photoUrl]
    @name = character_info[:name]
    @affiliations = character_info[:affiliation]
  end

  def format_array(array)
    array.empty? ? "None" : array.join(', ')
  end
end