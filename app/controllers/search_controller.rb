class SearchController < ApplicationController
  def index
    @members = AvatarFacade.nation_members(params[:nation])
    @query = params[:nation]
  end
end