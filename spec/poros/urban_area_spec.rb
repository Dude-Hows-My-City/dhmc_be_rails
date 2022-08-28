require 'rails_helper'

RSpec.describe UrbanArea do
  it "exists and has attributes" do
    data = { :name => "Denver" }
    city = UrbanArea.new(data)

    expect(city).to be_a UrbanArea
    expect(city.name).to eq("denver")
  end
end
