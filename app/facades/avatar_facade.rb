class AvatarFacade

  def self.get_nation_members(nation, amount)
    data = AvatarService.get_nation_members_response(nation, amount)
    # binding.pry
    data.map do |member_information|
      Member.new(member_information)
    end
  end
end