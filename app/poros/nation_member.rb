class NationMember
  attr_reader :name, :allies, :enemies, :photo_url, :affiliation

  def initialize(data)
    @name = data[:name]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @photo_url = data[:photo_url]
    @affiliation = data[:affiliation]
  end
end