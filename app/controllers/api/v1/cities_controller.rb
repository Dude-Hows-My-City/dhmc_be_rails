class Api::V1::CitiesController < ApplicationController 
    def index
        render json: CitySerializer.new(City.all)
    end

    def show
        if City.where(id: params[:id]).first.class == City
            render json: CitySerializer.new(City.find(params[:id]))
        else
            invalid_city_identification
        end
    end

     private

    def invalid_city_identification
        render json: { data: { message: 'City ID does not exist' }}, status: 400
    end 
end