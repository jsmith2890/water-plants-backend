# frozen_string_literal: true

class API::V1::PlantsController < ApplicationController
  def index
    plants = Plant.all
    render json: plants
  end
end
