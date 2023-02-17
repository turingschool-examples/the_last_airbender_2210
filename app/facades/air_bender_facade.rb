class AirBenderFacade
  def nation_characters(nation)
    raw_nation_characters(nation).map do |character|
      Character.new(nation)
    end
  end

  private

  def raw_nation_characters(nation)
    AirBenderService.parse_nation_characters(nation)
  end
end