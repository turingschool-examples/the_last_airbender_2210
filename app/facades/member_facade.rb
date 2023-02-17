class MemberFacade
  def self.get_members(nation)
    members_by_nation = MemberService.get_all_members_by_nation(nation)
    members_by_nation.map do |member|
      Member.new(member)
    end
  end
end