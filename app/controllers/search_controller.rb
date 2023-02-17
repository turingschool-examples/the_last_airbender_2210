class SearchController < ApplicationController
  def index
    @nation = params[:nation]
    # Faraday

    conn = Faraday.new(url: "https://last-airbender-api.fly.dev") 

    response = conn.get("/api/v1/characters?perPage=999&page=1&affiliation=#{@nation}")

    json = JSON.parse(response.body, symbolize_names: true)
    @member_count = json.count
    # require 'pry'; binding.pry
    @members = json.first(25)
    # @members = []
  end
end