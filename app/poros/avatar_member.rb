class AvatarMember

  attr_reader :id,
              :name,
              :affiliations,
              :enemies,
              :allies,
              :photo_url

  def initialize(data)
    @id          = data[:_id]
    @name        = data[:name]
    @affiliations = data[:affiliation]
    @enemies     = data[:enemies]
    @allies      = data[:allies]
    @photo_url   = data[:photoUrl]
  end
end
