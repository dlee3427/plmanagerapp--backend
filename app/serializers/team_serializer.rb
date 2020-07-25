class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :coach_picture, :players, :stadium, :stadium_picture, :primary_color, :secondary_color, :logo, :team_budget, :wins, :draws, :losses, :goals
  has_many :players
  has_many :matches 
  has_many :games, :through => :matches 
  has_many :formations 
  has_many :users
end
