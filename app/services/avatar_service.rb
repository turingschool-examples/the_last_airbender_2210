class AvatarService
  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def self.members_of(nation)
    response = conn.get("/api/v1/characters?perPage=100&affiliation=#{nation}")
    parse(response)
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  private_class_method :conn, :parse
end