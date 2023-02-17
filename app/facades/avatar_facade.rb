class AvatarFacade
  def initialize(service = AvatarService.new)
    @service = service
  end

  def members(nation)
    response = service.call("/api/v1/characters?affiliation=#{nation}")
    response.map do |character_data|
      Character.new(character_data)
    end
  end

  private

  attr_reader :service
end
