class NationsFascade
  def self.nation(nation)
    nation = nation.chop if nation == 'water+tribes'
    response = NationsService.nation(nation)
    response.map do |data|
      Character.new(data)
    end
  end
end
