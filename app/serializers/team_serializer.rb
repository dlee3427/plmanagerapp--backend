class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :coach_picture, :players, :stadium, :stadium_picture, :primary_color, :secondary_color, :logo, :team_budget, :wins, :draws, :losses, :goals, :travel_expenses, :merchandising_costs, :marketing_expenses, :employee_expenses, :taxes, :ticket_sales, :concession_sales, :sponsorship_value
  has_many :players
  has_many :matches 
  has_many :games, :through => :matches 
  has_many :users
end
