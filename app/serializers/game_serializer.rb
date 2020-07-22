class GameSerializer < ActiveModel::Serializer
  attributes :id, :location, :home_team_goals, :away_team_goals, :start_time, :end_time, :players, :users
end
