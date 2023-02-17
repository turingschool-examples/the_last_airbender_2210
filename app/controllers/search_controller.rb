class SearchController < ApplicationController
  def index
    require 'pry'; binding.pry
    @characters = AvatarFacade.top_25_characters_by_affiliation(params[:nation])
  end
end