class AvatarFacade 

  def self.all_characters_by_affiliation(nation)
    AvatarService.get_characters_by_affiliation(nation)
  end

  def self.first_25(nation)
    all_chars = all_characters_by_affiliation(nation)
    chars = all_chars.first(25)
    chars.map do |char_data|
      Character.new(char_data)
    end
  end
end