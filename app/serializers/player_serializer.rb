class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :name, :player_picture, :country_picture, :position, :number, :salary, :playing_time, :nationality, :age, :appearances, :goals, :assists, :passes, :tackles, :injured, :team, :user, :workouts
  has_many :games


  
end
