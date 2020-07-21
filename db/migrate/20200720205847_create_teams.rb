class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :coach_id
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

    end
  end
end
