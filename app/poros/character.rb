class Character
  attr_reader :name,
              :affiliation,
              :photo

  def initialize(attributes)
    @name = attributes[:name]
    @allies = attributes[:allies]
    @enemies = attributes[:enemies]
    @affiliation = attributes[:affiliation]
    @photo = attributes[:photoUrl]
  end

  def allies
    return 'None' if @allies.empty?
    @allies.join
  end

  def enemies
    return 'None' if @enemies.empty?
    @enemies.join
  end
end
