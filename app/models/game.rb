class Game < ApplicationRecord
    belongs_to :player
    belongs_to :user  
    has_many :matches 
    has_many :teams, :through => :matches

end
