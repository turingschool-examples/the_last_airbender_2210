class SearchController < ApplicationController
  def index
    @searched_nation = params[:nation]
    # conn = Faraday.new("https://last-airbender-api.fly.dev/api/v1/")
    # response = conn.get("characters?affiliation=#{@searched_nation}")
    # parse = JSON.parse(response.body, symbolize_names: true)
    @nations = NationFacade.nation_search(@searched_nation)
    # @total_members = NationFacade.parse_json.count
    # @member_list = parse.first(25)
    @nation = @searched_nation.split("+").map(&:capitalize).join(' ')
  end
end