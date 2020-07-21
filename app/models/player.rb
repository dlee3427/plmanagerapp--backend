class Player < ApplicationRecord
    has_many :games 
    has_many :workouts
    belongs_to :team 
    belongs_to :user 

end
