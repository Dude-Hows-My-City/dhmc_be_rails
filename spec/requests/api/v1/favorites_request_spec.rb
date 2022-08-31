require 'rails_helper'

RSpec.describe 'Favorites Request Endpoint' do
    it "create a favorite city" do
        user = User.create!(username: 'Tony')
        city_list = create_list(:city, 2)
        city = city_list.first
        favorites_params = ({
            user_id: user.id,
            city_id: city.id
        })

        headers = {"CONTENT_TYPE" => "application/json"}
        post '/api/v1/favorites', headers: headers, params: JSON.generate(favorite: favorites_params)
        
        expect(response).to  be_successful
        expect(response).to  have_http_status(204)
        
        expect(user.cities.first.name).to eq(city.name)
    end
    
    it "displays a list of user favorite cities" do
        user = User.create!(username: 'Tony')
        city_list = create_list(:city, 5)
        city_1 = city_list.first
        city_3 = city_list.third
        city_5 = city_list.fifth
        
        Favorite.create(user_id: user.id, city_id: city_1.id)
        Favorite.create(user_id: user.id, city_id: city_3.id)
        Favorite.create(user_id: user.id, city_id: city_5.id)
        
        get "/api/v1/favorites/#{user.id}"

        expect(response).to  be_successful
        expect(response).to  have_http_status(200)
        response_body = JSON.parse(response.body, symbolize_names: true)

        expect(response_body[:data].first[:id]).to eq(city_1.id.to_s)
        expect(response_body[:data].second[:id]).to eq(city_3.id.to_s)
        expect(response_body[:data].third[:id]).to eq(city_5.id.to_s)
    end
end