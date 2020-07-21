class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :player_picture
      t.string :position
      t.integer :number
      t.float :salary
      t.integer :playing_time
      t.string :nationality
      t.integer :age
      t.integer :appearances
      t.integer :goals
      t.integer :assists
      t.integer :passes
      t.integer :tackles
      t.boolean :coach_satisfied
      t.integer :team_id
      t.integer :user_id

    end
  end
end
