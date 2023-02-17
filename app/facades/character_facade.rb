class CharacterFacade
  def self.by_nation(nation)
    data = CharacterService.by_nation(nation)

    data.map do |character_data|
      Character.new(character_data)
    end
  end
end
