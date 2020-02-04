# frozen_string_literal: true

class API::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def profile
    options = { include: [:plants] }
    render json: { user: UserSerializer.new(current_user, options) }, status: :accepted
  end

  def create
    user = User.create(user_params)
    if user.valid?
      options = { include: [:plants] }
      token = encode_token(user_id: user.id)
      render json: { user: UserSerializer.new(user, options), jwt: token }, status: :created
    else
      render json: { errors: user.errors.messages }, status: :not_acceptable
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :email)
  end
end
