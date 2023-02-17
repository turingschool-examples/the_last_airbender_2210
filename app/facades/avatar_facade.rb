class AvatarFacade
  def self.nation(nation_name)
    characters_data = AvatarService.nation(nation_name)
    characters_data.map do |character_data|
      Character.new(character_data)
    end
  end
end
