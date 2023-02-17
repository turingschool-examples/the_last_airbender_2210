class AvatarService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def self.nation(nation_name)
    response = conn.get("/api/v1/characters?affiliation=#{nation_name}&perPage=1000&page=1")
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end


# https://last-airbender-api.fly.dev/api/v1/characters?affiliation=fire+nation