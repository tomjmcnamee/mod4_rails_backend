# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
  #$   rails db:create

* Database initialization
  #$   rails db:migrate

* ROUTES:
    GET - /api/v1/scores/:game_id
    ----- Returns top 10 fastest scores for the game found in params

    GET - /api/v1/scores/:gameid/:playerid
    ----- the top 10 fastest scores for the game found in params, filtered to return only those owned by the playerid found in params

    POST - /api/v1/scores/:gameid/:playerid/:score  **UNTESTED**
    ----- FETCH POST request to this URL will persist the new score to the database.  Return is JSON of the new ScoreHistory element (with id attribute).  THIS METHOD SHOULD BE UPDATED TO READ gameID, playerID, and Score within the FETCH BODY.

    GET - /api/v1/players/:playerid
    ----- Returns all DB attributes of the player found in params

    GET - /api/v1/facts/:score_context_id
    ----- Returns all DB attributes of the facts that have a score_context_id same as what is found in params

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
