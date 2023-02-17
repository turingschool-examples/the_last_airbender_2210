class SearchController < ApplicationController
  def index
    response = Faraday.get("https://last-airbender-api.fly.dev/api/v1/characters?affiliation=Fire+Nation")
    @nation = JSON.parse(response.body, symbolize_names: true)
    # @nation = NationFacade.nation
  end
end