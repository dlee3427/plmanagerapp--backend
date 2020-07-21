class Game < ApplicationRecord
    belongs_to :player 
    has_many :matches 
    has_many :teams, :through => :matches

end
