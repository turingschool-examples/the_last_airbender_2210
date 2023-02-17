class SearchFacade
  def self.get_search_results(search_field)
    data = SearchService.search_nation(search_field)
    data.map do |result|
      SearchResult.new(result)
    end
  end
end