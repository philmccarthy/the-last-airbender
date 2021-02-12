require 'rails_helper'

RSpec.describe 'search index', type: :feature do
  describe 'as a user' do
    it 'i see the total number of people who live in the nation i selected' do
      search_nation = 'Fire Nation'
      
       visit root_path

      find("option[value='fire_nation']").click
      click_button 'Search For Members'

      expect(page).to have_content("Members of #{search_nation}: 111")

    end
  end
end