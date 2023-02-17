class AvatarFacade
  def self.nation_search(nation)
    json = AvatarService.nation_search(nation)
    nation_member_array(json)
  end

  def self.nation_member_array(json)
    json.map do |data|
      Member.new(data)
    end
  end
end