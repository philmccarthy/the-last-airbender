require 'rails_helper'

RSpec.describe 'AirbenderService' do
  describe 'it makes API calls' do
    it 'and parses data into a Ruby hash' do
      characters_data = AirbenderService.call_characters_by_nation('fire nation')

      expect(characters_data.first).to have_key :_id
      expect(characters_data.first).to have_key :allies
      expect(characters_data.first).to have_key :photoUrl
      expect(characters_data.first).to have_key :name
      expect(characters_data.first).to have_key :affiliation

      expect(characters_data.last).to have_key :_id
      expect(characters_data.last).to have_key :allies
      expect(characters_data.last).to have_key :photoUrl
      expect(characters_data.last).to have_key :name
      expect(characters_data.last).to have_key :affiliation
    end
  end
end
