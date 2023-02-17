class SearchController < ApplicationController
  def index
    @nation_members = AvatarMemberFacade.all(params[:nation])
  end
end
