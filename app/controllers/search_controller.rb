class SearchController < ApplicationController
  def index
    @members = AvatarFacade.nation_members(params[:nation])
    @first_25_members = @members.first(25)
    @query = params[:nation]
  end
end