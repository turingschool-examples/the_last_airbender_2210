class SearchController < ApplicationController
  def index
    members = AvatarFacade.nation(params[:nation])
    @population = members.count
    @characters = members.first(25)
    @nation = params[:nation].split('+').join(' ').capitalize
  end
end