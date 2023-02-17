class AvatarMember

  attr_reader :id,
              :name,
              :description,
              :unit_price,
              :merchant_id

  def initialize(data)
    @id          = data[:_id]
    @name        = data[:name]
    @affiliation = data[:affiliation]
    @enemies     = data[:enemies]
    @photo_url   = data[:photoUrl]
  end
end
