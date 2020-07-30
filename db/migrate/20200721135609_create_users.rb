class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :user_picture, default: "https://st3.depositphotos.com/4111759/13425/v/450/depositphotos_134255532-stock-illustration-profile-placeholder-male-default-profile.jpg"
      t.integer :team_id
      t.string :password_digest
      t.string :nationality, default: "United States"
      t.string :country_picture, default: "https://movietvtechgeeks.com/wp-content/uploads/2015/01/arsenal-premier-league-soccer-need-improvement-2015.jpg" 
      t.integer :salary, default: 3000000
    end
  end
end
