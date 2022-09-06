require 'rails_helper'

RSpec.describe 'Cities Request Endpoint' do
    describe "happy path" do
        it "returns a list of cities" do
            create_list(:city, 5)
            get '/api/v1/cities'

            expect(response).to  be_successful
            expect(response).to  have_http_status(200)

            response_body = JSON.parse(response.body, symbolize_names: true)
            cities = response_body[:data]

            expect(cities.count).to eq(271) # DB is populated with 266 cities, this test adds 5 more
            cities.each do |city|
                expect(city).to have_key(:id)
                expect(city).to have_key(:type)
                expect(city).to have_key(:attributes)
                expect(city[:attributes]).to have_key(:name)
                expect(city[:attributes]).to have_key(:full_name)
                expect(city[:attributes]).to have_key(:summary)
                expect(city[:attributes]).to have_key(:scores)
                expect(city[:attributes]).to have_key(:details)
                expect(city[:attributes]).to have_key(:salaries)
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

        it "saves a city queue in search table when searched" do
            expect(Search.all).to eq([])
            expect(Search.all.count).to eq(0)

            user = User.create!(username: 'Tony')
            city_list = create_list(:city, 2)
            city = city_list.first

            get "/api/v1/cities/#{city.id}?user=#{user.id}"

            expect(Search.all.count).to  eq(1)
        end
    end

    describe "sad path" do
        it "returns an error if id isnt valid" do
            get "/api/v1/cities/500"
            expect(response).to have_http_status(400)

            error = JSON.parse(response.body, symbolize_names: true)

            expect(error).to have_key(:data)
            expect(error[:data][:message]).to eq("City ID does not exist")
        end
    end

end
