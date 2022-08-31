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
end