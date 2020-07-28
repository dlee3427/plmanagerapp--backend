class Workout < ApplicationRecord
    has_many :exercises
    has_many :player_workouts
    has_many :players, :through => :player_workouts 

end
