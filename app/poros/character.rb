class Character
  attr_reader :name,
              :allies,
              :enemies,
              :affiliation,
              :photo

  def initialize(attributes)
    @name = attributes[:name]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
    @photo = attributes[:photoUrl]
  end
end
