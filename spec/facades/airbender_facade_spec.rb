require 'rails_helper'

RSpec.describe 'AirbenderFacade' do
  describe 'it takes API data' do
    it 'and returns character objects' do
      characters = AirbenderFacade.get_characters_by_nation('fire nation')
      characters.each do |character|
        expect(character).to be_an_instance_of Character
      end
    end
  end
end
