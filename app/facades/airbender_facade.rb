class AirbenderFacade
  class << self
    def get_characters_by_nation(nation)
      characters_data = AirbenderService.call_characters_by_nation(nation)
      characters_data.map do |character_data|
        Character.new(character_data)
      end
    end
  end
end
