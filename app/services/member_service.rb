class MemberService
  def self.get_all_members(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}")
    JSON.parse(response.body, symbolize_names: true)
  end


  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end
end