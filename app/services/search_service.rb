class SearchService
  def self.conn
    Faraday.new("https://last-airbender-api.fly.dev/api/v1/")
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.response(term)
    response = conn.get("characters?affiliation=#{term}")
    parse_json(response)
  end
end