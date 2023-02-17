class AirBenderFacade
  def self.nation_characters(nation)
    raw_nation_characters(nation).map do |character|
      Character.new(character)
    end
  end

  private

  def self.raw_nation_characters(nation)
    AirBenderService.parse_nation_characters_response(nation)
  end
end