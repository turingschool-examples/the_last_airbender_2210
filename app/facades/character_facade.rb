class CharacterFacade
    def self.characters(nation)
        characters_json = ATLAService.get_character_by_nation(nation)
        characters_json.map{|character_data| Character.new(character_data)}
    end
end