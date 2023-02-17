class SearchController < ApplicationController
    def index
        @characters = CharacterFacade.characters(params[:nation])
        @total_characters_by_nation = CharacterFacade.total_characters_by_nation(params[:nation])
    end
end