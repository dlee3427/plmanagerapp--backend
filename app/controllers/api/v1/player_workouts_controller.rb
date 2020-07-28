class Api::V1::PlayerWorkoutsController < ApplicationController

    def index 
        playerworkouts = PlayerWorkout.all 
        render json: playerworkouts
    end 

    def create 
        playerworkout = PlayerWorkout.new(player_workout_params)
        if playerworkout.save 
            render json: playerworkout
        else 
            render :json => [{ :error => "An error was encountered while processing your photos. Please try again." }], :status => 304
        end
    end 

    def show 
        playerworkout = PlayerWorkout.find(params[:id])
        render json: playerworkout
    end 

    private

    def player_workout_params
        params.permit(:workout_id, :player_id, :id, :start_time, :end_time)
    end 




end
