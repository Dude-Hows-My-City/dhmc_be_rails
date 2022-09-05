namespace :db_populate do

  task :populate_cities => :environment do
    Favorite.destory_all
    City.destroy_all
    CityFacade.create_city_objects
    table = 'cities'
    auto_inc_val = 1
    ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH #{auto_inc_val}")
  end
end
 ## rake db_populate:populate_cities
