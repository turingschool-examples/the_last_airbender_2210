class Character
  attr_reader :id,
              :name,
              :photo_url,
              :allies,
              :enemies,
              :affiliation

  def initialize(data)
    @id = data[:_id]
    @name = data[:name]
    @photo_url = data[:photoUrl]
    @allies = sanitized_allies(data)
    @enemies = sanitized_enemies(data)
    @affiliation = data[:affiliation]
  end

  def sanitized_allies(data)
    allies = data[:allies].reject(&:blank?)
    if allies.empty?
      "None"
    else
      allies
    end
  end

  def sanitized_enemies(data)
    enemies = data[:enemies].reject(&:blank?)
    if enemies.empty?
      "None"
    else
      enemies
    end
  end
end