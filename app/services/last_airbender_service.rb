class LastAirbenderService 

  def self.get_all_members(nation) 
    response = conn.get("characters?affiliation=#{nation}&perPage=500")
    JSON.parse(response.body, symbolize_names: true)
  end

  private 

  def self.conn 
    Faraday.new(url: 'https://last-airbender-api.fly.dev/api/v1/')
  end
end