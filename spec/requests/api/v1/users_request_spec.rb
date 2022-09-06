require 'rails_helper'

RSpec.describe 'Users Create Endpoint' do
  describe "happy path" do
    it "creates a user" do
      user_params = { 'username' => 'Hotdog King' }
      headers = { "CONTENT_TYPE" => "application/json" }
      post '/api/v1/users', headers: headers, params: JSON.generate(user_params)
      expect(response).to  be_successful
      expect(response).to  have_http_status(200)
      response_body = JSON.parse(response.body, symbolize_names: true)

      expect(response_body).to have_key(:data)
      expect(response_body[:data]).to have_key(:id)
      expect(response_body[:data]).to have_key(:type)
      expect(response_body[:data]).to have_key(:attributes)
      expect(response_body[:data][:attributes]).to have_key(:username)
    end

    it "returns a single user" do
      user = User.create!(username: 'Tony')

      get '/api/v1/users?name=Tony'
      expect(response).to  be_successful
      expect(response).to  have_http_status(200)
      response_body = JSON.parse(response.body, symbolize_names: true)
      user = response_body[:data]
      expect(user[:type]).to  eq("user")
      expect(user[:attributes][:username]).to  eq("Tony")
    end
  end

  describe "sad path" do
    it "returns an error when username does not exist" do
      user = User.create!(username: 'tony')

      get '/api/v1/users?name=Tony'
      expect(response).to  have_http_status(400)
      response_body = JSON.parse(response.body, symbolize_names: true)
      error = response_body[:data]

      expect(error[:error]).to  eq("User does not exist")
    end
  end
  
end
