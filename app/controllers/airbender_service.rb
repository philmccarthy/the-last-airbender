class AirbenderService
  class << self
    def call_characters_by_nation(nation)
      response = Faraday.get('https://last-airbender-api.herokuapp.com/api/v1/characters') do |req|
        req.params[:affiliation] = nation
        req.params[:perPage] = '497'
      end
      JSON.parse(response.body, symbolize_names: true)
    end
  end
end
