class NationFacade
  def self.nation
    json = NationService.nation
    json[:results].map do |nation_data|
      Nation.new(nation_data)
    end[0...25]
  end
end