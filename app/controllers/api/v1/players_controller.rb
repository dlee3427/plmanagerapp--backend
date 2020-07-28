class Api::V1::PlayersController < ApplicationController
    
    def index 
        players = Player.all 
        render json: players
    end 
    
    def create 

        player = Player.new(player_params)
        if player.save
            byebug
            render json: player
        else 
            render :json => [{ :error => "An error was encountered while processing your photos. Please try again." }], :status => 304
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
