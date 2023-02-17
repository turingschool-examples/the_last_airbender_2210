class CharacterFacade
  def self.members_by_affiliation(nation)
    response = ATAService.get_members_by_affiliation(nation)
    response.map do |character_data|
      Character.new(character_data)
    end
  end
end