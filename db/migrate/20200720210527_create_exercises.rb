class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :exercise_type
      t.string :sets 
      t.string :reps
      t.integer :workout_id
      t.datetime :start_time
      t.datetime :end_time
      
    end
  end
end
