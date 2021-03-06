# frozen_string_literal: true

class API::V1::AuthController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create # POST /api/v1/login
    user = User.find_by(username: user_login_params[:username])
    if user&.authenticate(user_login_params[:password])
      token = encode_token(user_id: user.id)
      options = { include: [:plants] }
      render json: { user: UserSerializer.new(user, options), jwt: token }, status: :accepted
    else
      render json: { error: 'Invalid username or password' }, status: :unauthorized
    end
  end

  private

  def user_login_params
    params.require(:user).permit(:username, :password)
  end
end
