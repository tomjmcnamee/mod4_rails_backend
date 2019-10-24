Rails.application.routes.draw do


  namespace :api do
    namespace :v1 do
      # resources :players 
      resources :quotes 
      get "/scores/:gameid", to: "score_history#topscores"
      get "/scores/:gameid/:playerid", to: "score_history#playertopscores"
      # post "/scores/:gameid/:playerid/:score", to: "score_history#addplayerscores"
      post "/scores", to: "score_history#addplayerscores"
      patch "/players/:name/win", to: "players#win"
      get "/players/:playerid", to: "user#playerDetails"
      post "/players/", to: "user#create"
      post "/login/", to: "auth#login"
      get "/autologin/", to: "auth#create"
      get "/facts/:score_context_id", to: "fact#factDetails"
      get "/scoreContexts/:score_context_id", to: "score_context#contextDetails"
      get "/scoreContexts", to: "score_context#allContextNames"
      get "/games", to: "game#fetchAllGames"
      # get "/quotes", to: "quotes#index"
    end
  end
end