class Api::V1::CitiesController < ApplicationController 
    def index
        render json: CitySerializer.new(City.all)
    end

    def show
        render json: CitySerializer.new(City.find(params[:id]))
    end
end