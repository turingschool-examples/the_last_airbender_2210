class NationFascade
  def self.get_all_nation_members
    data = NationService.get_all_nation_members_response
  end
end