class CreatePlayerWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :player_workouts do |t|
      t.integer :workout_id
      t.integer :player_id
    end
  end
end
