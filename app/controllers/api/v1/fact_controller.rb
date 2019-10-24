class Api::V1::FactController < ApplicationController

  def factDetails
    fact = Fact.where("score_context_id = ?", params[:score_context_id])
    render json: fact
  end

  # def playertopscores
  #   playerTopScores = ScoreHistory.where(game_id: params[:gameid]).order("score ASC").limit(10).where(user_id: params[:playerid])
  #   render json: playerTopScores
  # end
  


  private



  end