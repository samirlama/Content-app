class Api::V1::UsersController < ApplicationController
  skip_before_action :authenticate_request

  def signup
    user = User.create(user_params)
    if user.valid?
      token = encode_token(user_id: user.id)
      json_string = UserSerializer.new(user, {params: {token: token}}).serialized_json
      render json: json_string, status: :ok
    else
      render json: user.errors, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:firstName, :lastName, :password, :email, :country)
  end
end
