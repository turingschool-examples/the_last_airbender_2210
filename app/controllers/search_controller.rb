class SearchController < ApplicationController
  def index
    members = AvatarFacade.new.members
    @count = members.count
    @members = members.first(25)
  end
end
