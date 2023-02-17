class SearchController < ApplicationController
  def index
    @characters = AirBenderFacade.nation_characters(params[:nation])
    @nation_character_count = @characters.count
    @characters = @characters.first(25)
    @nation = params[:nation].split('+').map { |word| word.capitalize }.join(' ')
  end
end