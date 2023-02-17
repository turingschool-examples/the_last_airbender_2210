class SearchController < ApplicationController

  def index 
    @nation = params[:nation]
    conn = Faraday.new(url: 'https://last-airbender-api.fly.dev/')
    response = conn.get("/api/v1/characters?affiliation=#{@nation}&perPage=100")
    @all_members = JSON.parse(response.body, symbolize_names: true)
    @first_25_members = @all_members.first(25)
  end
end