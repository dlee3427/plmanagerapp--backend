class User < ApplicationRecord
    has_many :games 
    has_many :players
    belongs_to :team 
    validates :name, presence: true
    has_secure_password 
end
