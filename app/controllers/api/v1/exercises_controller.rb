class Api::V1::ExercisesController < ApplicationController

    def index 
        exercises = Exercise.all 
        render json: exercises
    end 

    def create 
        exercise = Exercise.create(exercise_params)
        render json: exercise 
    end 

    def update 
        exercise = Exercise.find(params[:id])
        exercise.update(exercise_params)
        render json: exercise 
    end 

    private 

    def exercise_params 
        params.require(:exercise).permit(
            :name, 
            :type,
            :workout_id,
            :start_time,
            :end_time,
            :reps,
            :sets
        )
    end 

end
