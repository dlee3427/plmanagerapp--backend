class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :location
      t.integer :home_team_goals 
      t.integer :away_team_goals 
      t.datetime :start_time
      t.datetime :end_time
      t.integer :player_id 

    end
  end
end
