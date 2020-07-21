class Api::V1::ExercisesController < ApplicationController

    def create 

    end 

    private 

    def exercise_params 
        params.require(:exercise).permit(
            :name, 
            :type,
            :workout_id,
            :start_time,
            :end_time
        )
    end 

end
