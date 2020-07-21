class User < ApplicationRecord
    has_many :games 
    has_many :players
    belongs_to :team 
    has_secure_password 
    validates :name, :email, :team
end
