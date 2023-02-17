class AvatarFacade
  def self.nation_members(nation)
    data = AvatarService.members_of(nation)
    data.map do |member_data|
      NationMember.new(member_data)
    end
  end
end