class MemberFacade
  def self.get_members(nation)
    MemberService.find_all_members(nation).map do |member_data|
      Member.new(member_data)
    end
  end
end