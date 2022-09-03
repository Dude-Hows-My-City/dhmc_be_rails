class Api::V1::UsersController < ApplicationController
  def create
    user = User.new(params: username)
    if user.save
      render json: UserSerializer.new(user)
    else
      render json: { data: { message: 'Invalid Username' }}, status: 400
    end
  end
end