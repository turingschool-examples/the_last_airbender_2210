class Character 
  attr_reader :name, :photoUrl, :affiliation

  def initialize(character_data)
    @name = character_data[:name]
    @allies = character_data[:allies]
    @enemies = character_data[:enemies]
    @photoUrl = character_data[:photoUrl]
    @affiliation = character_data[:affiliation]
  end

  def enemies
    if @enemies.count == 0
      "None"
    else
      @enemies.join(', ')
    end 
  end

  def allies
    if @allies.count == 0
      "None"
    else
      @allies.join(', ')
    end
  end
end
