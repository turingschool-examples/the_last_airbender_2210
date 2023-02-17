class NationFacade

  def self.find_characters(nation)
    @characters = filter_response("/api/v1/characters?affiliation=#{nation}")
  end

  def self.filter_response(uri)
    NationService.parse_response(uri)
  end

end