require 'rails_helper'

RSpec.describe 'Users Create Endpoint' do
  describe "happy path" do
    it "creates a user" do
      user_params = { username: 'Hotdog King' }
      headers = { "CONTENT_TYPE" => "application/json" }
      post '/api/v1/users', headers: headers, params: JSON.generate(user_params)

      expect(response).to  be_successful
      expect(response).to  have_http_status(204)
    end
  end
end
