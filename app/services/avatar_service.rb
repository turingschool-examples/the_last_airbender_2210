class AvatarService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def self.get_characters_by_nation(nation)
    parse_json(conn.get("api/v1/characters?affiliation=#{nation}&perPage=497"))
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end