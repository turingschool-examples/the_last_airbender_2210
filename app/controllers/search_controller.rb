class SearchController < ApplicationController
  def index
    @characters = NationFacade.find_characters("/api/v1/characters?affiliation=#{params[:nation]}")
  end
end