class SearchController < ApplicationController
  def index
    @members ||= CharacterFacade.by_nation(params[:nation])
  end
end
