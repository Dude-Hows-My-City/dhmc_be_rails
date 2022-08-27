class DropUrbanAreas < ActiveRecord::Migration[5.2]
  def change
    drop_table :urban_areas
  end
end
