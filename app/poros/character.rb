class Character
    attr_reader :allies, :enemies, :name, :id, :photo_url

    def initialize(character_data)
      @id = character_data[:id]
      @allies = character_data[:allies]
      @enemies = character_data[:enemies]
      @name = character_data[:name]
      @photo_url = character_data[:photoUrl]
    end
end