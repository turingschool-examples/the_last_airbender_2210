class SearchController < ApplicationController
  def index
    @searched_nation = params[:nation]
    @nations = NationFacade.nation_search(@searched_nation)
    @nation = @searched_nation.split("+").map(&:capitalize).join(' ')
  end
end