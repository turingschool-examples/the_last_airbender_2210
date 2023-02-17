class AirBenderService
  def self.connection
    Faraday.new(url: 'https://last-airbender-api.fly.dev/api/v1/characters')
  end

  def self.parse_nation_characters_response(nation)
    JSON.parse(nation_characters_response(nation).body, symbolize_names: true)
  end

  def self.nation_characters_response(nation)
    connection.get("?affiliation=#{nation}&perPage=25&page=1")
  end
end