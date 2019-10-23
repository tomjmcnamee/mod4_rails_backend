class Api::V1::PlayerController < ApplicationController

  def create
    newUser = User.create(user_params)
    token = JWT.encode({user: newUser.id}, "killer-klowns")
    render json: { user: newUser, token: token }
  end


  private

  def user_params
    params.require(:user).permits(:name, :login_id, :password)
  end



  end