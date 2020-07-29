class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :coach_picture
      t.string :stadium
      t.string :stadium_picture
      t.string :primary_color
      t.string :secondary_color
      t.string :logo
      t.float :team_budget
      t.integer :wins
      t.integer :draws
      t.integer :losses
      t.integer :goals 
      t.integer :ticket_sales
      t.integer :concession_sales 
      t.integer :sponsorship_value
      t.integer :travel_expenses
      t.integer :merchandising_costs
      t.integer :marketing_expenses
      t.integer :employee_expenses
      t.integer :taxes

    end
  end
end
