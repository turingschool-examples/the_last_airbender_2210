class NationFascade
  def self.get_all_nation_members(search_term)
    data = NationService.get_all_nation_members_response(search_term)
    data.map do |attr|
      Character.new(attr)
    end
  end
end