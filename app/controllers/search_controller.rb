class SearchController < ApplicationController
  def index
    @characters = AirbenderFacade.get_characters_by_nation(search_nation)
  end

  private

  def search_nation
    @search_nation = params[:nation].gsub(/_/, ' ')
  end
end
