class CharacterService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.by_nation(nation)
    response = conn.get('/api/v1/characters') do |req|
      req.params = { affiliation: nation, perPage: 100 }
    end

    parse(response)
  end
end
