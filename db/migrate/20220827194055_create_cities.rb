class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.string :full_name
      t.json :summary
      t.json :scores
      t.json :details

      t.timestamps
    end
  end
end
