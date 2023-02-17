class AvatarService 

  def self.get_characters_by_affiliation(nation)
    parse_data(conn.get("/api/v1/characters?affiliation=#{nation}&perPage=100"))
  end

  def self.parse_data(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.conn 
    Faraday.new(url: 'https://last-airbender-api.fly.dev/')
  end
end