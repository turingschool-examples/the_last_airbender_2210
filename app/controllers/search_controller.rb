class SearchController < ApplicationController
  def index
    @members = []
    @searched_nation = params[:nation]
  end
end