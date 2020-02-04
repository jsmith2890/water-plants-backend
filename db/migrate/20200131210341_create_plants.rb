# frozen_string_literal: true
class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :nick_name
      t.string :plant_type
      t.string :water_frequency
      t.date :first_watered
      t.text :notes
      t.integer :user_id
      t.timestamps
    end
  end
end
