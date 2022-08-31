class Api::V1::FavoritesController < ApplicationController 
    def index
        user = User.find(params[:id])
        render json: CitySerializer.new(user.cities)
    end
    
    def create
        user_id = params[:favorite][:user_id]
        city_id = params[:favorite][:city_id]
        Favorite.create(user_id: user_id, city_id: city_id) 
    end

    def destroy
        user = User.find(params[:user_id])
        favorite = user.favorites.where(city_id: params[:city_id]).first
        Favorite.delete(favorite.id)
        head :no_content
    end
    
end