class SearchController < ApplicationController
  def index
    @results = SearchFacade.get_search_results(params[:nation])
  end
end