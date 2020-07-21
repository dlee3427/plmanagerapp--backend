class Api::V1::UsersController < ApplicationController

    def create 
        user = User.create(user_params)
        render json: user
    end 

    private 

    def user_params 
        params.require(:user).permit(
            :name,
            :email, 
            :team_id,
            :password,
            :password_confirmation
        )
    end 


end
