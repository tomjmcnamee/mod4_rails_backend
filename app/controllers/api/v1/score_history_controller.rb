class Api::V1::ScoreHistoryController < ApplicationController

  def topscores
    topScores = ScoreHistory.where(game_id: params[:gameid]).order("score ASC").limit(10)
    render json: topScores
  end

  def playertopscores
    playerTopScores = ScoreHistory.where(game_id: params[:gameid]).order("score ASC").limit(10).where(user_id: params[:playerid])
    render json: playerTopScores
  end

  def addplayerscores
    newScore = ScoreHistory.create(game_id: params[:gameid], user_id: params[:playerid], score: params[:score])
    render json: newScore
  end
  


private

  def score_history_params
    params.require(score_history).permit(:game_id, :user_id, :score)
  end

end