class Character
  attr_reader :name, :image, :affiliation, :allies, :enemies, :id

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @image = data[:photoUrl]
    @affiliation = data[:affiliation]
    @allies = data[:allies]
    @enemies = data[:enemies]
  end
end