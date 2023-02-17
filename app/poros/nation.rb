class Nation
  attr_reader :id,
              :name,
              :allies,
              :photo,
              :enemies,
              :affiliation,
              :genres

  def initialize(attributes)
    @id           = attributes[:_id]
    @name         = attributes[:name]
    @allies       = attributes[:allies]
    @photo        = attributes[:photoUrl]
    @enemies      = attributes[:enemies]
    @affiliation  = attributes[:affiliation]
  end
end