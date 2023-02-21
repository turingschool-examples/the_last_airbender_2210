class NationFacade
  def self.nation_search(term)
    nations = SearchService.response(term)
    nations.map { |nation| Nation.new(nation) }
  end
end