class CharactersFacade
  def self.characters_by_nation(nation)
    characters_response = CharactersService.nation_search(nation)
    characters_response.map do |character|
      Character.new(character)
    end
  end
end