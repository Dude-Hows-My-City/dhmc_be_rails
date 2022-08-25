class TeleportService

  def self.conn
    url = 'https://api.teleport.org/api/'
    Faraday.new(url: url)
  end

  def self.get_city_data(city)
    response = conn.get('cities/') do |f|
      f.params['search'] = city
    end
    JSON.parse(response.body, symbolize_names: true)
  end
end
