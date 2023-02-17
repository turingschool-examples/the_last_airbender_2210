class AvatarFacade
  def self.characters_by_affiliation(query)
    AvatarService.character_data_by_affiliation(query).map do |data|
      Character.new(data)
    end
  end

  # def self.total_characters_by_affiliation_count(query)
  #   AvatarService.character_data_by_affiliation(query).count
  # end
end