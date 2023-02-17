require 'faraday'
class SearchService

  def self.search_nation(params)
    url = "https://last-airbender-api.fly.dev/api/v1/characters?affiliation=" + params
    response = Faraday.get(url)

    data = JSON.parse(response.body, symbolize_names: true)
  end

end