class Api::V1::TeamsController < ApplicationController

    def index 
        teams = Team.all 
        render json: teams
    end 
    
    def create 
        team = Team.create(team_params)
        team.user = user 
        render json: team 
    end 

    def show 
        team = Team.find(params[:id])
        render json: team 
    end 

    def update
        team = Team.find(params[:id])
        team.update(team_params)
        render json: team
    end 

    private 

    def team_params 
        params.require(:team).permit(
            :name,
            :coach, 
            :coach_picture, 
            :stadium 
            :stadium_picture, 
            :primary_color, 
            :secondary_color,
            :logo,
            :team_budget, 
            :wins,
            :draws,
            :losses
        )
    end 

    def find_user
        user = User.find(session[:user_id])
    end 


end
