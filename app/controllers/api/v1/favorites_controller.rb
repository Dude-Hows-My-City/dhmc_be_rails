class Api::V1::FavoritesController < ApplicationController 
    def create
        user_id = params[:favorite][:user_id]
        city_id = params[:favorite][:city_id]
        Favorite.create(user_id: user_id, city_id: city_id) 
    end
end