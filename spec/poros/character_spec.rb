require 'rails_helper'

RSpec.describe Character do
  describe 'it exists' do
    before(:each) do
      attributes = {
        allies: ["Fire Nation"],
        enemies: ["Aang"],
        photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
        name: "Afiko",
        affiliation: "Fire Nation"
      }
      @afiko = Character.new(attributes)
    end

    it 'assigns json data to attributes' do
      expect(@afiko.name).to be_a String
      expect(@afiko.allies).to be_a String
      expect(@afiko.enemies).to be_a String
      expect(@afiko.affiliation).to be_a String
      expect(@afiko.photo).to be_a String
    end

    it 'returns allies and enemies as a string, or else none' do
      expect(@afiko.allies).to eq('Fire Nation')
      expect(@afiko.enemies).to eq('Aang')

      attributes =  {
        allies: [],
        enemies: [],
        photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/1/16/Ember_Island_Players.png/revision/latest?cb=20130722113209",
        name: "Ember Island Players",
        affiliation: "Fire Nation"
      }
      @no_enemies_or_allies = Character.new(attributes)

      expect(@no_enemies_or_allies.allies).to eq('None')
      expect(@no_enemies_or_allies.enemies).to eq('None')
    end
  end
end
