class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :name
      t.integer :team_id
      t.integer :game_id

      t.timestamps
    end
  end
end
