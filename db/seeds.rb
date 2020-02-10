# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(username: 'test', password: '123')

plants = [
  {
    nick_name: 'Phil',
    plant_type: 'Fiddle Leaf Fig',
    water_frequency: '17 days',
    first_watered: Date.new(2020, 1, 16),
    user_id: user1.id
  },
  {
    nick_name: 'Walter',
    plant_type: 'Snake Plant',
    water_frequency: '15 days',
    first_watered: Date.new(2020, 1, 19),
    user_id: user1.id
  },
  {
    nick_name: 'Tina',
    plant_type: 'Money Tree',
    water_frequency: '11 days',
    first_watered: Date.new(2020, 1, 11),
    user_id: user1.id
  },
  {
    nick_name: 'Linda',
    plant_type: "Bird's Nest Fern",
    water_frequency: '5 days',
    first_watered: Date.new(2020, 2, 2),
    user_id: user1.id
  },
  {
    nick_name: 'Mable',
    plant_type: 'Croton',
    water_frequency: '21 days',
    first_watered: Date.new(2020, 1, 1),
    user_id: user1.id
  },
  {
    nick_name: 'Janet',
    plant_type: 'Bell Pepper Plant',
    water_frequency: '3 days',
    first_watered: Date.new(2020, 1, 13),
    user_id: user1.id
  },
  {
    nick_name: 'Fran',
    plant_type: 'Strawberry Plant',
    water_frequency: '5 days',
    first_watered: Date.new(2020, 1, 13),
    user_id: user1.id
  },
  {
    nick_name: 'Dick',
    plant_type: 'Dracaena',
    water_frequency: '9 days',
    first_watered: Date.new(2020, 1, 16),
    user_id: user1.id
  },
  {
    nick_name: 'Bob',
    plant_type: 'Spider Plant',
    water_frequency: '23 days',
    first_watered: Date.new(2020, 1, 30),
    user_id: user1.id
  },
  {
    nick_name: 'Phil',
    plant_type: 'Jade',
    water_frequency: '16 days',
    first_watered: Date.new(2020, 1, 25),
    user_id: user1.id
  },
  { nick_name: 'Frank',
    plant_type: 'Wavy Fern',
    water_frequency: '33 days',
    first_watered: Date.new(2020, 1, 20),
    user_id: user1.id }
]

plants.each { |plant| Plant.create(plant) }

# dates = [{ date_to_water: Date.new(2020, 1, 16), plant_id: 8 },
#          { date_to_water: Date.new(2020, 2, 3), plant_id: 2 },
#          { date_to_water: Date.new(2020, 1, 14), plant_id: 7 },
#          { date_to_water: Date.new(2020, 1, 30), plant_id: 3 },
#          { date_to_water: Date.new(2020, 2, 1), plant_id: 5 }]

# dates.each { |date| WaterDate.create(date) }

puts 'seeded'
