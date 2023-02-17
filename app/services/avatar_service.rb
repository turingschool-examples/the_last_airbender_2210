class AvatarService
  def call(uri)
    parse(conn.get(uri))
  end

  private

  def conn
    Faraday.new(conn_params)
  end

  def conn_params
    {
      url: base_uri,
      params: { perPage: 25,
                page: 1 }
    }
  end

  def base_uri
    'https://last-airbender-api.fly.dev/'
  end

  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
