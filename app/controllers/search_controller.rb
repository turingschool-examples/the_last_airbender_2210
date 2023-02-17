class SearchController < ApplicationController
  def index
    @nation_details = NationMembersFacade.search_nation(params[:nation])
    # require 'pry';binding.pry
  end
end