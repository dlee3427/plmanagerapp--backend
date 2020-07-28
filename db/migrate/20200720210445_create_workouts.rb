class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.datetime :start_time 
      t.datetime :end_time

    end
  end
end
