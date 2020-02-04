class CreateWaterDates < ActiveRecord::Migration[6.0]
  def change
    create_table :water_dates do |t|
      t.date :date_to_water
      t.integer :plant_id
    end
  end
end
