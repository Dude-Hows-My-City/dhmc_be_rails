require 'rails_helper'

RSpec.describe CityFacade do
  it "creates city objects from multiple endpoints" do
    cities = CityFacade.create_city_objects
require "pry"; binding.pry
    expect(cities).to be_all City
  end
end
