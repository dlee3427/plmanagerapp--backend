class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :player_picture, :position, :number, :salary, :playing_time, :nationality, :age, :appearances, :goals, :assists, :passes, :tackles, :coach_satisfied, :team,:user
  has_many :games
  has_many :workouts, :through => :player_workouts


  
end
