class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :coach_picture, :stadium, :stadium_picture, :primary_color, :secondary_color, :logo, :team_budget, :wins, :draws, :losses, :goals
end
