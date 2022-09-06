require 'rails_helper'

RSpec.describe CityFacade do
  it "creates city objects from multiple endpoints", :vcr do
    City.destroy_all
    cities = CityFacade.create_city_objects

    expect(cities).to be_all UrbanArea # Test saves and returns PORO
    expect(City.all.count).to eq(266)

    city = City.first.attributes
    expect(city.keys).to eq(["id", "name", "full_name", "summary", "scores", "details", "created_at", "updated_at", "salaries"])
    expect(city["summary"].keys).to eq(["continent", "summary"])
    expect(city["details"].keys).to eq(["image_photographer", "image_web_url", "image_mobile_url", "population_size_in_millions", "average_costs", "culture", "housing"])
    expect(city["details"]["average_costs"].length).to eq(11)
    expect(city["details"]["culture"].length).to eq(9)
    expect(city["details"]["housing"].keys).to eq(["large_apartment", "medium_apartment", "small_apartment"])
    expect(city["scores"].length).to eq(18)
    expect(city["salaries"].length).to eq(52)
    expect(city["salaries"][0].keys).to eq(["job_title", "median_pay"])
  end
end
