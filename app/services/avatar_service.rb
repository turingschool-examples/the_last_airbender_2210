class AvatarService
  def self.nation_search(nation)
    response = conn.get("characters?perPage=150&affiliation=#{nation}")
    parse_json(response)
  end

  def self.conn
    Faraday.new(
      url: 'https://last-airbender-api.fly.dev/api/v1'
    )
  end

  def self.parse_json(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end