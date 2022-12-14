class CityFacade
  def self.create_city_objects
## Establish data attributes to create object
    data = {  name: nil,
              full_name: nil,
              summary: {  "continent" => nil,
                          "summary" => nil
                        },
              scores: { "housing" => 0.0,
                        "cost_of_living" => 0.0,
                        "startups" => 0.0,
                        "venture_capital" => 0.0,
                        "travel_connectivity" => 0.0,
                        "commute" => 0.0,
                        "business_freedom" => 0.0,
                        "safety" => 0.0,
                        "health_care" => 0.0,
                        "education" => 0.0,
                        "environmental_quality" => 0.0,
                        "economy" => 0.0,
                        "taxation" => 0.0,
                        "internet_access" => 0.0,
                        "leisure_and_culture" => 0.0,
                        "tolerance" => 0.0,
                        "outdoors" => 0.0,
                        "teleport_city_score" => 0.0
                      },
              details: {  "image_photographer" => nil,
                          "image_web_url" => nil,
                          "image_mobile_url" => nil,
                          "population_size_in_millions" => 0.0,
                          "average_costs" => {
                              "consumer_price_index" => 0.0,
                              "apples_per_kg" => 0.0,
                              "bread" => 0.0,
                              "cappuccino" => 0.0,
                              "cinema" => 0.0,
                              "fitness_club" => 0.0,
                              "import_beer" => 0.0,
                              "public_transport" => 0.0,
                              "lunch_meal" => 0.0,
                              "taxi" => 0.0,
                              "restaurant_price_index" => 0.0
                          },
                          "culture" => {
                              "art_galleries" => 0,
                              "movie_theaters" => 0,
                              "comedy_clubs" => 0,
                              "concert_venues" => 0,
                              "historical_sites" => 0,
                              "museums" => 0,
                              "performing_arts_venues" => 0,
                              "sports_venues" => 0,
                              "zoos" => 0
                          },
                          "housing" => {
                              "large_apartment" => 0.0,
                              "medium_apartment" => 0.0,
                              "small_apartment" => 0.0
                          }
                        },
              :salaries => [
                              {
                                "job_title" => "account_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "accountant",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "administrative_assitant",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "architect",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "attorney",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "business_analyst",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "business_development",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "c_level_executive",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title"=> "cashier",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "chef",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "chemical_engineer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "civil_engineer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "content_marketing",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "copywriter",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "customer_support",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "data_analyst",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "data_scientist",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "dentist",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "electrical_engineer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "executive_assistant",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "fashion_designer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "finance_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "financial_analyst",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "graphic_designer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "hardware_engineer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "human_resources_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "it_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "industrial_designer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "interior_designer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "lecturer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "marketing_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "mechanical_engineer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "mobile_developer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "nurse",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "office_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "operations_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "pharmacist",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "physician",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "postdoctoral_researcher",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "product_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "project_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "qa_engineer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "receptionist",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "research_scientist",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "sales_manager",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "software_engineer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "systems_administrator",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "teacher",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "ux_designer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "waiter",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "web_designer",
                                "median_pay" => 0.0
                              },
                              {
                                "job_title" => "web_developer",
                                "median_pay" => 0.0
                              }
                            ]
            }
## Get list of city names from which to pull data
    city_names = []
    UrbanAreaFacade.create_list_of_cities.map do |ua|
      city_names << ua
    end

    city_names.each do |city|

      city = city.name.gsub(" ", "-").delete(",").delete(".")
## Just the city of Galway, Ireland has a different name within the the URI
      data[:name] = city.titleize
      if city == "galway"
        city = "gaillimh"
      end

      city_data = TeleportService.get_city_data(city)
      city_scores = TeleportService.get_city_score_data(city)
      city_images = TeleportService.get_city_image_data(city)[:photos]
      city_details = TeleportService.get_city_details_data(city)[:categories]
      city_salaries = TeleportService.get_city_salary_data(city)[:salaries]

## Get Basic Info and Summary
      data[:full_name] = city_data[:full_name]
      data[:summary]["continent"] = city_data[:continent]
      data[:summary]["summary"] = city_scores[:summary]

## Get Scores
      score_list = []
      city_scores[:categories].each do |score|
        score_list << score[:score_out_of_10].round(2)
      end

      data[:scores].each do |k,v|
        data[:scores][k] = score_list.shift
      end
      data[:scores]["teleport_city_score"] = city_scores[:teleport_city_score].round(2)

## Get Details
      data[:details]["image_photographer"] = city_images[0][:attribution][:photographer]
      data[:details]["image_web_url"] = city_images[0][:image][:web]
      data[:details]["image_mobile_url"] = city_images[0][:image][:mobile]
      data[:details]["population_size_in_millions"] = city_details[1][:data][0][:float_value]

      data[:details]["average_costs"]["consumer_price_index"] = city_details[3][:data][0][:float_value]
      cost_list = []
        city_details[3][:data][1..].each do |cost|
          cost_list << cost[:currency_dollar_value]
        end
      data[:details]["average_costs"].each_with_index do |kv, index|
        if index == 1..10
          data[:details]["average_costs"][kv[0]] = cost_list[index-1]
        end
      end

      culture_list = []
        city_details[4][:data][1..].each do |culture|
          culture_list << culture[:int_value]
        end
        culture_list.delete(nil)
      data[:details]["culture"].each do |k,v|
        data[:details]["culture"][k] = culture_list.shift
      end

      apartment_prices = []
        city_details[8][:data][0..2].each do |price|
          apartment_prices << price[:currency_dollar_value]
        end
        apartment_prices.reverse
      data[:details]["housing"].each do |k,v|
        data[:details]["housing"][k] = apartment_prices.shift
      end

## Get Salaries
      salaries_list = []
        city_salaries.each do |job|
          salaries_list << job[:salary_percentiles][:percentile_50].round(2)
        end
      data[:salaries].each do |salary|
        salary["median_pay"] = salaries_list.shift
      end

      City.create(data)
    end
  end
end
