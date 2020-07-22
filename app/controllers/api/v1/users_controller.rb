class Api::V1::UsersController < ApplicationController

    def create 
        user = User.create(user_params)
        if user && user.valid? 
            render json: user
        else 
            render json: { errors: user.errors.full_messages}
        end 
    end 

    private 

    def user_params 
        params.require(:user).permit(
            :name,
            :email, 
            :team_id,
            :password,
            :password_confirmation,
            :password_digest
        )
    end 


end
