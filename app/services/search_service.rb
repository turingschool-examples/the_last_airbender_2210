class SearchService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
