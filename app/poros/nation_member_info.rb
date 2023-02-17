class NationMemberInfo
  attr_reader :id, :name, :photo, :affiliation, :enemies, :allies
  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @photo = data[:photoUrl]
    @allies = data[:allies]
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    # require 'pry';binding.pry
  end

  def allies
    @allies.map { |allie| allie.name }
  end

  def enemies
    @enemies.map { |enemy| allie.name }
  end


end