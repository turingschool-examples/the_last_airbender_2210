class MemberService
  def self.get_all_members_by_nation(nation)
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=100&page=1")
    JSON.parse(response.body, symbolize_names: true)
  end


  def self.conn
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end
end