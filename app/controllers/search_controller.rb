class SearchController < ApplicationController
  def index
    @members = AvatarFacade.get_nation_members(25)
    @members_count = AvatarFacade.get_nation_members(200)
  end
end