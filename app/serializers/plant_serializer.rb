# frozen_string_literal: true

class PlantSerializer
  include FastJsonapi::ObjectSerializer
  set_key_transform :camel_lower
  attributes :nick_name, :name, :days_between_watering
end
