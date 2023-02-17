class AvatarFacade
  def self.load_characters_by_nation(nation)
    AvatarService.get_characters_by_nation(nation).map do |character_info|
      Character.new(character_info)
    end
  end
end