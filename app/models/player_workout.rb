class PlayerWorkout < ApplicationRecord
    belongs_to :workout 
    belongs_to :player
end
