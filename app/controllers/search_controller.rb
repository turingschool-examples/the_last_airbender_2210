class SearchController < ApplicationController
  def index
    @nation_members = AvatarFacade.nation_search(params[:nation])
  end
end