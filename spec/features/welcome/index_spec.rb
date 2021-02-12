require 'rails_helper'

RSpec.describe 'welcome index', type: :feature do
  describe 'as a user' do
    it 'when i select fire nation from the select field and click search i should be on /search' do
      visit root_path

      find("option[value='fire_nation']").click
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
    end
  end
end