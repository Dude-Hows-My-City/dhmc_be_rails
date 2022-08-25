require 'rails_helper'

RSpec.describe TeleportService do
  it "establishes a connection" do
    conn = TeleportService.conn
    expect(conn.class).to eq(Faraday::Connection)
  end

  it "sends response data" do
    response = TeleportService.get_city_data("denver, co")
    expect(response).to be_a Hash
  end
end
