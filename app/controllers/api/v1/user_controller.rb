class Api::V1::UserController < ApplicationController

  def playerDetails
    user = User.find(params[:playerid])
    render json: user
  end

  # def playertopscores
  #   playerTopScores = ScoreHistory.where(game_id: params[:gameid]).order("score ASC").limit(10).where(user_id: params[:playerid])
  #   render json: playerTopScores
  # end
  


  private



  end