namespace :db_populate do
  desc "fills city table from one service call"
  task :fill_all_tables => [:populate_ua]


  task :populate_ua => :environment do
    UrbanAreaFacade.create_list_of_cities
    table = 'urban_areas'
    auto_inc_val = 267
    ActiveRecord::Base.connection.execute("ALTER SEQUENCE #{table}_id_seq RESTART WITH #{auto_inc_val}")
  end
end
