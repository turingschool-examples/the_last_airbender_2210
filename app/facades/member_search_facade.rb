class MemberSearchFacade
  def self.member_search(nation) 
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev") 

    response = conn.get("/api/v1/characters?perPage=999&page=1&affiliation=#{@nation}")

    json = JSON.parse(response.body, symbolize_names: true)

    @member_count = json.count
    @members = json.first(25).map do |member|
      Member.new(member)
    end

    @members.each do |member|
      if member[:allies].count == 0
        member[:allies] = "None"
      end
      if member[:enemies].count == 0
        member[:enemies] = "None"
      end
    end
  end
end