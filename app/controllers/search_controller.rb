class SearchController < ApplicationController
  def index
    @nation_members_total = AvatarMemberFacade.all(params[:nation])
    @nation_members = AvatarMemberFacade.all(params[:nation])[0..24]
  end
end
