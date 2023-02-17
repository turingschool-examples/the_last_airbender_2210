class SearchController < ApplicationController 
    def index
        @nation = params[:nation].sub("+"," ").upcase
        @characters = NationsFascade.nation(params[:nation])
    end
    
end