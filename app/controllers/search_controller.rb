class SearchController < ApplicationController
  def index
    @all_members = MemberFacade.get_members(params[:nation])
    @twenty_five_members = @all_members.first(25)
   
  end
end