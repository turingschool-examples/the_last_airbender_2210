class NationMembersFacade
  def self.search_nation(nation)
    results = AirbenderService.nation_search_for(nation)
    # require 'pry';binding.pry
    results.map do |character|
      # require 'pry';binding.pry
      NationMemberInfo.new(character)
    end
  end
end