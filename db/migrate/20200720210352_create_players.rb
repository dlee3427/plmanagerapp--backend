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
      t.integer :appearances, default: 0
      t.integer :goals, default: 0
      t.integer :assists, default: 0
      t.integer :passes, default: 0
      t.integer :tackles, default: 0
      t.boolean :injured, default: false
      t.integer :team_id
      t.integer :user_id
      t.string :country_picture

    end
  end
end
