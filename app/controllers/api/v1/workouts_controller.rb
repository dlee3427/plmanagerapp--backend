class Api::V1::WorkoutsController < ApplicationController

    def index 
        workouts = Workout.all 
        render json: workouts 
    end 

    def create
        workout = Workout.create(workout_params)
        render json: workout 
    end     

    def show 
        workout = Workout.find(params[:id])
        render json: workout 
    end 

    private 

    def workout_params 
        params.require(:workout).permit(
            :name, 
            :player_id,
            :start_time, 
            :end_time
        )

    end 

end
