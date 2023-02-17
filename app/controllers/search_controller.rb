class SearchController < ApplicationController
  def index
    @characters = NationFacade.find_characters(params[:nation])
  end
end