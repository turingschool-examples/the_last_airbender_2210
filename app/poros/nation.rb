class Nation
  attr_reader :id,
              :name,
              :allies,
              :enemies,
              :photoUrl,
              :affiliation

  def initialize(attr)
    @id = attr[:id]
    @name = attr[:name]
    @allies = attr[:allies]
    @enemies = attr[:enemies]
    @photoUrl = attr[:photoUrl]
    @affiliation = attr[:affiliation]
  end
end