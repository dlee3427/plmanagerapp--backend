class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|
      t.string :name
      t.datetime :date
      t.integer :team_id
      t.integer :game_id

    end
  end
end
