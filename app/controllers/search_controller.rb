class SearchController < ApplicationController
  def index
    @characters = AirBenderFacade.nation_characters(params[:nation])
    binding.pry
  end
end