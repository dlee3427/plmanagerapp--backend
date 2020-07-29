class Api::V1::WorkoutsController < ApplicationController

    def index 
        workouts = Workout.all 
        render json: workouts 
    end 

    def create
        workout = Workout.new(workout_params)
        if workout.save 
            debugger
            render json: workout 
        else 
            render :json => [{ :error => "An error was encountered while processing your photos. Please try again." }], :status => 304
        end
    end     

    def show 
        workout = Workout.find(params[:id])
        render json: workout 
    end 

    def update 
        workout = Workout.find(params[:id])
        workout.update(workout_params)
        render json: workout 
    end 

    def destroy
        workout = Workout.find(params[:id])
        if workout.destroy 
            render json: workout
        else 
            render json: { message: "error: #{player.errors.full_messages}" }, status: 500
        end
    end 

    private 

    def workout_params 
        params.require(:workout).permit(
            :name, 
            :player_id,
            :start_time, 
            :end_time,
            :exercise_id
        )

    end 

end
