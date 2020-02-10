# frozen_string_literal: true

class API::V1::PlantsController < ApplicationController
  def index
    plants = Plant.all
    render json: plants
  end

  def create
    plant = Plant.create(plant_params)
    if plant.valid?
      render json: { plant: PlantSerializer.new(plant) }, status: :created
    else
      render json: { errors: plant.errors.messages }, status: :not_acceptable
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:nick_name, :plant_type, :water_frequency,
                                  :first_watered, :notes, :user_id)
  end
end
