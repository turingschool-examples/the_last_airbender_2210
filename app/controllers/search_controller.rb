class SearchController < ApplicationController
  def index
    @nation_members_total = AvatarMemberFacade.all(params[:nation])
    @nation_members = @nation_members_total[0..24]
  end
end
