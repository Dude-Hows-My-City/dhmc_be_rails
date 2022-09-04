class Api::V1::UsersController < ApplicationController
  def create
    @user = User.new(user_params)
    if @user.save
      render json: UserSerializer.new(@user)
    else
      render json: { data: { message: 'Invalid Username' }}, status: 400
    end
  end

  private
  def user_params
    JSON.parse(params['_json'], symbolize_names: true)
  end
end
