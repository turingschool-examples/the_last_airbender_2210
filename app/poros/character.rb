class Character 
    attr_reader :character_id, :name, :allies, :enemies, :affiliation, :photo_url
   def initialize(info)
    @character_id = info[:_id]
    @name = info[:name]
    @allies = info[:allies]
    @enemies = info[:enemies]
    @affiliation = info[:affiliation]
    @photo_url = info[:photoUrl]
   end
end