class Api::V1::ScoreContextController < ApplicationController

  def contextDetails
    scoreContext = ScoreContext.find(params[:score_context_id])
    render json: scoreContext
  end

  def allContextNames
    contextDescriptionArr = ScoreContext.all.map{|contx| contx.description}
    render json: contextDescriptionArr
  end

  # def playertopscores
  #   playerTopScores = ScoreHistory.where(game_id: params[:gameid]).order("score ASC").limit(10).where(user_id: params[:playerid])
  #   render json: playerTopScores
  # end
  


  private



  end