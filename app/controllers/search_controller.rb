class SearchController < ApplicationController
  def index
    @searched_nation = params[:nation]
    conn = Faraday.new("https://last-airbender-api.fly.dev/api/v1/")
    response = conn.get("characters?affiliation=Fire+Nation")
    parse = JSON.parse(response.body, symbolize_names: true)
    @total_members = parse.count
    @member_list = parse.first(25)
    @nation = @searched_nation.split("+").map(&:capitalize).join(' ')
  end
end