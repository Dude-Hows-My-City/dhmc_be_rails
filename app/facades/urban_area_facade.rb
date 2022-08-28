class UrbanAreaFacade

  def self.create_list_of_cities
    data = TeleportService.get_all_urban_areas
    data[:_links][:"ua:item"].map do |item|
      UrbanArea.new(item)
    end
  end
end
