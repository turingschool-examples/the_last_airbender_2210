class SearchController < ApplicationController
  def index
    @members = AvatarFacade.new.members
  end
end
