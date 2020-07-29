class Api::V1::PlayersController < ApplicationController
    
    def index 
        players = Player.all 
        render json: players
    end 
    
    def create 
        player = Player.new(player_params)
        if player.save
            render json: player
        else 
            render :json => {message: "#{player.errors.full_messages}"}
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
        player = Player.find(params[:id])
        if player.destroy 
            render json: player 
        else 
            render json: { message: "error: #{player.errors.full_messages}" }, status: 500
        end
        
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
            :injured, 
            :team_id,
            :user_id,
            :country_picture,
            :appearances,
            :goals,
            :tackles,
            :assists,
            :passes
        )
    end 



end
