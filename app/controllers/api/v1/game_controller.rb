class Api::V1::GameController < ApplicationController

  def fetchAllGames
    games = Game.all
    render json: games
  end

  


  private



  end