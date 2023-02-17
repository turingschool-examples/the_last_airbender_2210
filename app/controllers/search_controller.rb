class SearchController < ApplicationController
  def index
    @members = NationFascade.get_all_nation_members(@searched_nation)
    @searched_nation = params[:nation]
  end
end