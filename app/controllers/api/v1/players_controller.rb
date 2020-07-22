class Api::V1::PlayersController < ApplicationController
    
    def index 
        players = Player.all 
        render json: players
    end 
    
    def create 
        player = Player.create(player_params)
        if player.valid? 
            render json: player
        else 
            render json: { errors: player.errors.full_messages}
        end 
    end 

    def show 
        player = Player.find(params[:id])
        render json: player 
    end 

    def update 
        player = Player.find(params[:id])
        player.update(player_params)
        render json: player 
    end 

    def destroy
        player = Player.destroy[params[:id]]
        render json: player 
    end 

    private 

    def player_params
        params.require(:player).permit(
            :name, 
            :player_picture,
            :position,
            :number,
            :salary, 
            :playing_time,
            :nationality,
            :age, 
            :appearances,
            :goals,
            :assists,
            :passes, 
            :tackles,
            :coach_satisfied
        )
    end 



end
