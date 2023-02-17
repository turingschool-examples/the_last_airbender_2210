class SearchController < ApplicationController
  def index
    @nation = params[:nation].gsub("+", " ").titleize
    @members = CharacterFacade.top_25_members_by_affiliation(@nation)
    @member_count = CharacterFacade.total_members_in_affiliation(@nation)
     # binding.pry
  end
end