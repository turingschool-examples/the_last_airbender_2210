class SearchController < ApplicationController

  def index 
    @nation = params[:nation]
    @all_members = AvatarFacade.all_characters_by_affiliation(@nation)
    @first_25_members = AvatarFacade.first_25(@nation)
  end
end