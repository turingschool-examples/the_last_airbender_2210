class AvatarMemberFacade
  def self.all
    AvatarService.avatar_members.map do |member|
      AvatarMember.new(member)
    end
  end
end
