# frozen_string_literal: true
class Plant < ApplicationRecord
  belongs_to :user
  has_many :water_dates
end
