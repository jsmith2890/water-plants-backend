# frozen_string_literal: true

class CreatePlants < ActiveRecord::Migration[6.0]
  def change
    create_table :plants do |t|
      t.string :nick_name
      t.string :name
      t.string :days_between_watering
      t.integer :user_id
      t.timestamps
    end
  end
end
