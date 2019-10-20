Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      # resources :players 
      resources :quotes 
      get "/scores/:gameid", to: "score_history#topscores"
      get "/scores/:gameid/:playerid", to: "score_history#playertopscores"
      post "/scores/:gameid/:playerid/:score", to: "score_history#addplayerscores"
      get "/players/:playerid", to: "user#playerDetails"
      get "/facts/:score_context_id", to: "fact#factDetails"
      patch "/players/:name/win", to: "players#win"
      get "/scoreContexts/:score_context_id", to: "score_context#contextDetails"
      get "/scoreContexts", to: "score_context#allContextNames"
      get "/games", to: "game#fetchAllGames"
      # get "/quotes", to: "quotes#index"
    end
  end
end