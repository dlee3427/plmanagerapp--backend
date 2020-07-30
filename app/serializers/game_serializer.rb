class GameSerializer < ActiveModel::Serializer
  attributes :id, :location, :home_team_goals, :away_team_goals, :start_time, :end_time, :player, :user
  has_many :matches
  has_many :teams, :through => :matches 
  belongs_to :player 
  belongs_to :user 

  
end
