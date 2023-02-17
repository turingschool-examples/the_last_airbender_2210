class SearchController < ApplicationController
  def index
    @characters = AirBenderFacade.nation_characters(params[:nation])
    @nation_character_count = AirBenderFacade.nation_character_count(params[:nation])
    @nation = params[:nation].split('+').map { |word| word.capitalize }.join(' ')
  end
end