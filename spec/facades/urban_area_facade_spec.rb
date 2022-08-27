require 'rails_helper'

RSpec.describe UrbanAreaFacade do
  it "populates the database from a service call" do
    data = UrbanAreaFacade.create_list_of_cities

    expect(data).to be_all UrbanArea
    data.map do |city|
      expect(city.name).to be_a String
    end
  end
end
