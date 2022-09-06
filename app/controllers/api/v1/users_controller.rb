class Api::V1::UsersController < ApplicationController
  def index
    if User.where(username: params[:name]).count > 0
      user = User.where(username: params[:name]).first
      render json: UserSerializer.new(user)
    else
      render json: { data: { error: 'User does not exist' }}, status: 400
    end
  end
  
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
    params.permit(:username)
  end
end
