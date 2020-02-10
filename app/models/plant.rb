# frozen_string_literal: true
class Plant < ApplicationRecord
  belongs_to :user

  validates :plant_type, presence: true
  validates :water_frequency, presence: true
end
