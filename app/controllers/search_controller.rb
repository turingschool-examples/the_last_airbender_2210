class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    @member_count = CharacterFacade.total_members_in_affiliation(@nation)
     # binding.pry
  end
end