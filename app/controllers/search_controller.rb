class SearchController < ApplicationController
  def index
    @members = AvatarFacade.get_nation_members(params[:nation], 25)
    @members_count = AvatarFacade.get_nation_members(params[:nation], 200).count
  end
end