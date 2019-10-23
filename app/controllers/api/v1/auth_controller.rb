class Api::V1::AuthController < ApplicationController
    def create
        token = request.headers["Authorization"]
        userId = JWT.decode(token, "12345")[0]["user"]
        user = User.find(userId)
        render json: {user: user}
    end

    def login
        user = User.find_by(login_id: params["auth"]["login_id"])
        if user && user.authenticate(params["auth"]["password"])
            token = JWT.encode({user: user.id}, "12345")
            render json: {user: user, token: token}
        end
    end
    
end