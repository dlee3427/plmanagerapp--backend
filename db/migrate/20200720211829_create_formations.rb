class CreateFormations < ActiveRecord::Migration[6.0]
  def change
    create_table :formations do |t|
      t.string :name
      t.integer :user_id
      t.integer :team_id
    end
  end
end
