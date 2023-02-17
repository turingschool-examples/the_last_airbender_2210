class NationsService
    def self.conn
        conn = Faraday.new(url: 'https://last-airbender-api.fly.dev/') do |faraday|
            faraday.params
        end
    end  
    def self.parse_json(response)
        JSON.parse(response.body, symbolize_names: true)
    end
    def self.nation(nation)
        response = conn.get("/api/v1/characters?affiliation=#{nation}")
        parse_json(response)
    end
end