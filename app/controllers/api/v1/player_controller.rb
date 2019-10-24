class Api::V1::PlayerController < ApplicationController

  def create
    newUser = User.create(user_params)
    token = JWT.encode({user: newUser.id}, "12345")
    render json: { user: newUser, token: token }
  end


  private

  def user_params
    params.require(:user).permit(:name, :login_id, :password)
  end



  end