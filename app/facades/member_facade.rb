class MemberFacade 

  def self.all_members_data(nation)
    members_response = LastAirbenderService.get_all_members(nation)
    members = members_response.map do |member|
      Member.new(member)
    end
  end
end