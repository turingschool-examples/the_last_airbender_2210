class AvatarService

  def self.conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_nation_members_response(amount)
    response = conn.get("/api/v1/characters?affiliation=Fire+Nation&perPage=#{amount}")
    parse(response)
  end

  private_class_method :conn, :parse
end