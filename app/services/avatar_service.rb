class AvatarService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def self.members_of(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    parse(response)
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end