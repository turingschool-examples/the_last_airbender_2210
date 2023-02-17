class SearchController < ApplicationController
  def index
    @members = MemberSearchFacade.member_search(params[:nation])
    end
  end
end