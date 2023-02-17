class NationService
  def self.connection
    Faraday.new(url: "https://last-airbender-api.fly.dev")
  end

  def self.parse_response(uri)
    JSON.parse(response(uri).body, symbolize_names: true)
  end

  def self.response(uri)
    connection.get(uri)
  end
end