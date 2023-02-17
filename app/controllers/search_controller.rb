class SearchController < ApplicationController
    def index
        @characters = CharacterFacade.characters(params[:nation])
    end
end