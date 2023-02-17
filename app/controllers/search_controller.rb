class SearchController < ApplicationController
  def index
    @characters = AvatarFacade.load_characters_by_nation(params[:nation])
  end
end