require 'rails_helper'

RSpec.describe 'Cities API' do
    it "returns a list of cities" do
        create_list(:city, 5)
        get '/api/v1/cities'
        
        expect(response).to  be_successful
        expect(response).to  have_http_status(200)

        response_body = JSON.parse(response.body, symbolize_names: true)
        cities = response_body[:data]

        expect(cities.count).to eq(5) 
        cities.each do |city|
            expect(city).to have_key(:id)
            expect(city).to have_key(:type)
            expect(city).to have_key(:attributes)
            expect(city[:attributes]).to have_key(:name)
            expect(city[:attributes]).to have_key(:full_name)
            expect(city[:attributes]).to have_key(:summary)
            expect(city[:attributes]).to have_key(:scores)
            expect(city[:attributes]).to have_key(:details)
        end 
    end

    it "can return one city by its id" do
        id = create(:city).id
        get "/api/v1/cities/#{id}"

        response_body = JSON.parse(response.body, symbolize_names: true)
        city = response_body[:data]
        expect(response).to have_http_status(200)
        expect(city[:type]).to eq("city")
        expect(city[:attributes]).to have_key(:name)
        expect(city[:attributes]).to have_key(:full_name)
        expect(city[:attributes]).to have_key(:summary)
        expect(city[:attributes]).to have_key(:scores)
        expect(city[:attributes]).to have_key(:details)
    end
end