class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.string :player_picture, default: "https://images.daznservices.com/di/library/GOAL/6d/5d/kai-havertz-bayer-leverkusen-2019_cyt6bgfr5i4w1aw4rpmg7t17p.jpg?t=617208671&quality=100"
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
      t.string :country_picture, default: "https://cdn.vox-cdn.com/thumbor/C9gLZcb-fU7NyvO9u9W_ya49J4w=/0x0:930x620/1200x800/filters:focal(391x236:539x384)/cdn.vox-cdn.com/uploads/chorus_image/image/66495493/Statement_Graphic_PL_FA_EFL_2.0.png"

    end
  end
end
