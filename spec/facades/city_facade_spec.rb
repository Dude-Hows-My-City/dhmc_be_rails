require 'rails_helper'

RSpec.describe CityFacade do
  it "creates city objects from multiple endpoints" do
    City.destroy_all
    cities = CityFacade.create_city_objects

    expect(cities).to be_all UrbanArea # Test saves and returns PORO
    expect(City.all.count).to eq(266)
  end
end
