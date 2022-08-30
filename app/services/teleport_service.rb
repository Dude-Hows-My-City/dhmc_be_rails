class TeleportService

  def self.conn
    url = 'https://api.teleport.org/api/'
    Faraday.new(url: url)
  end

  def self.get_city_data(city)
    response = conn.get("urban_areas/slug:#{city}/")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_city_score_data(city)
    response = conn.get("urban_areas/slug:#{city}/scores")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_all_urban_areas
    response = conn.get("urban_areas/")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_city_image_data(city)
    response = conn.get("urban_areas/slug:#{city}/images")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_city_details_data(city)
    response = conn.get("urban_areas/slug:#{city}/details")
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.get_city_salary_data(city)
    response = conn.get("urban_areas/slug:#{city}/salaries")
    JSON.parse(response.body, symbolize_names: true)
  end
end
