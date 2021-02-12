require 'rails_helper'

RSpec.describe 'search index', type: :feature do
  describe 'as a user' do
    it 'i see the total number of people who live in the nation i selected' do
      search_nation = 'fire nation'
      
      visit root_path

      select('Fire Nation', from: :nation)
      click_button 'Search For Members'

      expect(page).to have_content("Members of #{search_nation.titleize}: 97")

      expect(page).to have_content("Name: Afiko")
      expect(page).to have_content("Allies: Fire Nation")
      expect(page).to have_content("Enemies: Aang")
      expect(page).to have_content("Affiliations: Fire Nation")
      
      expect(page).to have_content("Name: Druk")
      expect(page).to have_content("Allies: Zuko")
      expect(page).to have_content("Enemies: Red Lotus")
      expect(page).to have_content("Affiliations: Fire Nation")
    end
  end
end
