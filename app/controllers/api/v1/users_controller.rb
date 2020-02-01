# frozen_string_literal: true

class API::V1::UsersController < ApplicationController
  def show
    user = User.find_by(id: params[:id])
    options = { include: [:plants] }
    render json: UserSerializer.new(user, options)
  end
end
