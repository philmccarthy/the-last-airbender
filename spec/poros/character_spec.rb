require 'rails_helper'

RSpec.describe Character do
  describe 'it exists' do
    it 'assigns json data to attributes' do
      attributes = {
        _id: "5cf5679a915ecad153ab68cc",
        allies: ["Fire Nation"],
        enemies: ["Aang"],
        photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
        name: "Afiko",
        affiliation: "Fire Nation"
      }

      afiko = Character.new(attributes)

      expect(afiko.name).to be_a String
      expect(afiko.allies).to be_an Array
      expect(afiko.enemies).to be_an Array
      expect(afiko.affiliation).to be_a String
      expect(afiko.photo).to be_a String
    end
  end
end
