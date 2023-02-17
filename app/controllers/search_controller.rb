class SearchController < ApplicationController
  def index
    response = SearchService.conn.get("api/v1/characters?perPage=1000&affiliation=#{params[:nation]}")
    @members = SearchService.parse(response).map
    @nation = params[:nation]
  end
end