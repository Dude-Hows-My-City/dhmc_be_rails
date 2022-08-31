class TeleportService
  def self.conn
    url = 'https://city-microservice.herokuapp.com/api/'
    Faraday.new(url: url)
  end

  def self.get_city_data(city)
    response = conn.get("#{city}")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_city_score_data(city)
    response = conn.get("#{city}/scores")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_urban_areas
    response = conn.get('urban_areas')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_city_image_data(city)
    response = conn.get("#{city}/images")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_city_details_data(city)
    response = conn.get("#{city}/details")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_city_salary_data(city)
    
    binding.pry
    
    response = conn.get("#{city}/salaries")
    JSON.parse(response.body, symbolize_names: true)
  end
end
