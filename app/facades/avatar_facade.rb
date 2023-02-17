class AvatarFacade
  def self.top_25_characters_by_affiliation(query)
    AvatarService.character_data_by_affiliation(query).first(25).map do |data|
      Character.new(data)
    end
  end

  def self.all_characters_by_affiliation_count(query)
    AvatarService.character_data_by_affiliation(query).count
  end
end