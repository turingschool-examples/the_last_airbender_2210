class CharactersService

  def self.nation_search(nation)
    response = conn.get"characters?affiliation=#{nation}&perPage=100"
    data = JSON.parse(response.body, symbolize_names: true)
  end
  
  def self.conn
    Faraday.new("https://last-airbender-api.fly.dev/api/v1/")
  end
end