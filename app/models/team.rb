class Team < ApplicationRecord
    has_many :players
    has_many :matches 
    has_many :games, :through => :matches
    has_many :formations

end
