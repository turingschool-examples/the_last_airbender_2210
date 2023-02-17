class SearchController < ApplicationController
  def index
    @characters = AirBenderFacade.nation_characters(params[:nation])
  end
end