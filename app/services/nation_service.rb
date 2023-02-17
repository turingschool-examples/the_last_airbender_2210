class NationService
  def self.conn
    conn = Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def self.parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_nation_members_response(search_term)
    response = conn.get('/api/v1/characters') do |req|
      req.params[:perPage] = 1000
      req.params[:affiliation] = search_term
    end
    
    parse(response)
  end
end