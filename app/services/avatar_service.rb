class AvatarService
  def self.character_data_by_affiliation(query)
    response = conn.get('characters', { affiliation: query, perPage: 150})
    body = parse_body(response)
  end

  def self.conn
    Faraday.new(
      url: 'https://last-airbender-api.fly.dev/api/v1/'
    )
  end

  def self.parse_body(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end