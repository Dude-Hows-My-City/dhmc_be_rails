require 'rails_helper'

RSpec.describe TeleportService do
  it "establishes a connection" do
    conn = TeleportService.conn
    expect(conn.class).to eq(Faraday::Connection)
  end

  it "sends response data, all urban areas", :vcr do
    response = TeleportService.get_all_urban_areas

    expect(response).to be_a Hash
    expect(response).to have_key :_links
    expect(response[:_links]).to have_key :"ua:item"
    expect(response[:_links][:"ua:item"]).to be_a Array
    expect(response[:_links][:"ua:item"][0]).to have_key :name
  end

  it "sends response data, city basic stats", :vcr do
    response = TeleportService.get_city_data("paris")

    expect(response).to be_a Hash
    expect(response).to have_key :continent
    expect(response).to have_key :full_name
  end

  it "sends response data, city scores", :vcr do
    response = TeleportService.get_city_score_data("paris")

    expect(response).to be_a Hash
    expect(response).to have_key :categories
    expect(response[:categories]).to be_a Array
    expect(response).to have_key :summary
    expect(response).to have_key :teleport_city_score
  end

  it "sends response data, city details", :vcr do
    response = TeleportService.get_city_details_data("paris")

    expect(response).to be_a Hash
    expect(response).to have_key :categories
    expect(response[:categories]).to be_a Array
  end

  it "sends response data, city images", :vcr do
    response = TeleportService.get_city_image_data("paris")

    expect(response).to be_a Hash
    expect(response).to have_key :photos
    expect(response[:photos]).to be_a Array
    expect(response[:photos][0]).to have_key :attribution
    expect(response[:photos][0][:attribution]).to have_key :photographer
    expect(response[:photos][0]).to have_key :image
    expect(response[:photos][0][:image].keys).to eq([:mobile, :web])
  end

  it "sends response data, city salaries", :vcr do
    response = TeleportService.get_city_salary_data("paris")

    expect(response).to be_a Hash
    expect(response).to have_key :salaries
    expect(response[:salaries]).to be_a Array
    expect(response[:salaries][0].keys).to eq([:job, :salary_percentiles])
    expect(response[:salaries][0][:job]).to have_key :title
    expect(response[:salaries][0][:salary_percentiles].keys).to eq([:percentile_25, :percentile_50, :percentile_75])
  end
end
