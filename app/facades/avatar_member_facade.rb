class AvatarMemberFacade
  def self.all(nation)
    AvatarService.avatar_members(nation).map do |member|
      AvatarMember.new(member)
    end
  end
end
