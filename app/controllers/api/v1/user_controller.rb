class Api::V1::UserController < ApplicationController

  def playerDetails
    user = User.find(params[:playerid])
    render json: user
  end

  def create
    newUser = User.create(user_params)
    token = JWT.encode({user: newUser.id}, "12345")
    render json: { user: newUser, token: token }
  end

  # def playertopscores
  #   playerTopScores = ScoreHistory.where(game_id: params[:gameid]).order("score ASC").limit(10).where(user_id: params[:playerid])
  #   render json: playerTopScores
  # end
  


  private

  def user_params
    params.require(:user).permit(:name, :login_id, :password)
  end


  end