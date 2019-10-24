class Api::V1::ScoreHistoryController < ApplicationController

  def topscores
    # topScores = ActiveRecord::Base.connection.execute("SELECT scoreh.id, scoreh.game_id, scoreh.user_id, u.name, scoreh.score FROM score_histories as scoreh JOIN users as u ON scoreh.user_id = u.id WHERE game_id = #{params[:gameid]} ORDER BY score ASC LIMIT 10;")
    topScores = ScoreHistory.getTop10PerGameWithNames(params[:gameid])

    render json: topScores
  end

  def playertopscores
    playerTopScores = ScoreHistory.where(game_id: params[:gameid]).order("score ASC").limit(10).where(user_id: params[:playerid])
    render json: playerTopScores
  end

  def addplayerscores
    newScore = ScoreHistory.create(game_id: params["score_history"][:game_id], user_id: params["score_history"][:user_id], score: params["score_history"][:score])
    # newScore = ScoreHistory.create(params["score_history"])
    render json: newScore
  end
  


private

  def score_history_params
    params.require(:score_history).permit(:game_id, :user_id, :score)
  end

end