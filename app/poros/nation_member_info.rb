class NationMemberInfo
  attr_reader :id, :name, :photo, :affiliation, :allies, :enemies
  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @photo = data[:photoUrl]
    @allies = data[:allies]
    # require 'pry';binding.pry
    @enemies = data[:enemies]
    @affiliation = data[:affiliation]
    # require 'pry';binding.pry
  end

  # def allies
  #   @allies if @allies.count != nil
  # end

  # def enemies
  #   @enemies if @enemies.count != nil  
  # end


end