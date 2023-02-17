class SearchController < ApplicationController
  def index
    @all_characters = CharactersFacade.characters_by_nation(params[:nation])
    @characters = @all_characters[0..24]
    @nation = params[:nation]
  end
end