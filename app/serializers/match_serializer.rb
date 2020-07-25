class MatchSerializer < ActiveModel::Serializer
  attributes :id, :team, :game
  belongs_to :team
  belongs_to :game 
end
