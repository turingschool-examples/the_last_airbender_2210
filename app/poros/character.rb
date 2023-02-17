class Character
  attr_reader :name,
              :allies,
              :enemies,
              :photo,
              :affiliation,
              :id
  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo = data[:photoUrl]
    @affiliation = data[:affiliation]
    @id = data[:_id]
  end
end