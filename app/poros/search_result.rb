class SearchResult

  attr_reader :name,
              :allies,
              :enemies,
              :photo,
              :id

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @allies = data[:allies]
    if @allies.length == 0
      @allies = ["none"]
    end
    @enemies = data[:enemies]
    if @enemies.length == 0
      @enemies = ["none"]
    end
    @photo = data[:photoUrl]
  end
end