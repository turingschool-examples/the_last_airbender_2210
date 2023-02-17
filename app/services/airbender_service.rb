class AirbenderService
  def self.nation_search_for(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    # require 'pry';binding.pry
    parse_json(response)
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

end