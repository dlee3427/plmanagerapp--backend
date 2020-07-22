class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :user_picture
      t.integer :team_id
      t.string :password_digest
    end
  end
end
