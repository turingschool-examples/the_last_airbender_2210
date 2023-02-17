class SearchController < ApplicationController
  def index
    members = AvatarFacade.new.members(params[:nation])
    @count = members.count
    @members = members.first(25)
  end
end
