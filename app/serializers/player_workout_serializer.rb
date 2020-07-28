class PlayerWorkoutSerializer < ActiveModel::Serializer
  attributes :id, :workout, :player 
  belongs_to :player
  belongs_to :workout
end
