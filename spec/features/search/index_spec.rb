require 'rails_helper'

RSpec.describe 'search index', type: :feature do
  describe 'as a user' do
    it 'i see the total number of people who live in the nation i selected' do
      search_nation = 'fire nation'
      
      visit root_path

      select('Fire Nation', from: :nation)
      click_button 'Search For Members'

      expect(page).to have_content("Members of #{search_nation.titleize}: 97")

    end
  end
end