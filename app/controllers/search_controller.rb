class SearchController < ApplicationController
  def index
    @nation = params[:nation]

    # Nation member info
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev") 

    response = conn.get("/api/v1/characters?perPage=999&page=1&affiliation=#{@nation}")

    json = JSON.parse(response.body, symbolize_names: true)

    @member_count = json.count
    @members = json.first(25)
    
    # # member photos
    # @member_photos = @members.map.with_index do |member, index|
    #   response = conn.get("/api/v1/characters/#{member[:_id]}")
    #   json = JSON.parse(response.body, symbolize_names: true)
    #   require 'pry'; binding.pry
    #   json[:photoUrl]
    # end
  end
end