class SearchController < ApplicationController
  def index
    @search_nation = params[:search]
    response = Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters?perPage=497&affiliation=fire')
    data = JSON.parse(response.body, symbolize_names: true)
    
    @characters = data.map do |character_data|
      Character.new(character_data)
    end
  end
end
