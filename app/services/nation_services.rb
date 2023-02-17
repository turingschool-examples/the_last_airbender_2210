class NationService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.nation
    response = NationService.conn.get("/api/v1/characters?affiliation=Fire+Nation")
    NationService.parse(response)
  end
end