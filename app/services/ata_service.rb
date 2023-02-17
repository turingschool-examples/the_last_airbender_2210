class ATAService
  def self.conn
    Faraday.new("https://last-airbender-api.fly.dev/api/v1/")
  end

  def self.get_members_by_affiliation(nation)
    response = conn.get("characters", {affiliation: nation, perPage: 500})
    JSON.parse(response.body, symbolize_names: true)
  end
end