class AvatarFacade

  def self.get_nation_members(amount)
    data = AvatarService.get_nation_members_response(amount)
    # binding.pry
    data.map do |member_information|
      Member.new(member_information)
    end
  end
end