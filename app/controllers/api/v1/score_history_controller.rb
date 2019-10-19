class Api::V1::ScoreHistoryController < ApplicationController

  def topscores
    topScores = ScoreHistory.where(game_id: params[:gameid]).order("score ASC").limit(10)
    render json: topScores
  end

private



end