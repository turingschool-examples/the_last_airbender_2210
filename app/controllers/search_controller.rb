class SearchController < ApplicationController
  def index
    @characters = AvatarFacade.characters_by_affiliation(params[:nation])
    @affiliation = @characters.first.affiliation
    # require 'pry'; binding.pry
    # @total_character_count = AvatarFacade.total_characters_by_affiliation_count(params[:nation])
  end
end