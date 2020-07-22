class Player < ApplicationRecord
    has_many :games 
    has_many :player_workouts
    has_many :workouts, :through => :player_workouts
    belongs_to :team 
    belongs_to :user 

    validates :name, presence: true 

end
