class Player < ApplicationRecord
    has_many :games 
    belongs_to :team 
end
