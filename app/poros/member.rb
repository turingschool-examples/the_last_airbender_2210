class Member
  attr_reader :name, 
              :allies,
              :enemies,
              :affiliation,
              :photo_url
  
  def initialize(data)
    @name = data[:name]
    @allies = if data[:allies] == []
                ["None"]
              else
                data[:allies]
              end
    @enemies =  if data[:enemies] == []
                  ["None"]
                else
                  data[:enemies]
                end
    @affiliation = data[:affiliation]
    @photo_url = data[:photoUrl]

  end

end