class Api::V1::GamesController < ApplicationController

    def index 
        games = Game.all 
        render json: games
    end 

    def create 
        game = Game.create(games_params)
        render json: game 
    end 

    private 

    def games_params 
        params.require(:game).permit(
            :location, 
            :home_team_goals, 
            :away_team_goals, 
            :start_time, 
            :end_time,
            :player_id, 
            :user_id
        )
    end 

    def find_team 
        
    end 

end
