require 'rails_helper'

RSpec.describe TeleportService do
  it "establishes a connection" do
    conn = TeleportService.conn
    expect(conn.class).to eq(Faraday::Connection)
  end

  it "sends response data, all urban areas" do
    response = TeleportService.get_all_urban_areas

    expect(response).to be_a Hash
    expect(response).to have_key :_links
    expect(response[:_links]).to have_key :"ua:item"
    expect(response[:_links][:"ua:item"]).to be_a Array
    expect(response[:_links][:"ua:item"][0]).to have_key :name
  end

  it "sends response data, city basic stats" do
    response = TeleportService.get_city_data("paris")

    expect(response).to be_a Hash
    expect(response).to have_key :continent
    expect(response).to have_key :full_name
  end

  it "sends response data, city scores" do
    response = TeleportService.get_city_score_data("paris")

    expect(response).to be_a Hash
    expect(response).to have_key :categories
    expect(response[:categories]).to be_a Array
    expect(response).to have_key :summary
    expect(response).to have_key :teleport_city_score
  end

  it "sends response data, city details" do
    response = TeleportService.get_city_details_data("paris")

    expect(response).to be_a Hash
    expect(response).to have_key :categories
    expect(response[:categories]).to be_a Array
  end

  it "sends response data, city images" do
    response = TeleportService.get_city_image_data("paris")

    expect(response).to be_a Hash
    expect(response).to have_key :photos
    expect(response[:photos]).to be_a Array
    expect(response[:photos][0]).to have_key :attribution
    expect(response[:photos][0][:attribution]).to have_key :photographer
    expect(response[:photos][0]).to have_key :image
    expect(response[:photos][0][:image].keys).to eq([:mobile, :web])
  end
end
