class NationService
  def self.get_all_nation_members_response(search_term)
    conn = Faraday.new(url: 'https://last-airbender-api.fly.dev')
    
    response = conn.get('/api/v1/characters') do |req|
      req.params[:perPage] = 1000
      req.params[:affiliation] = search_term
    end
  
    JSON.parse(response.body, symbolize_names: true)
  end
end