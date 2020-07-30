class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :user_picture, :team, :password_digest, :nationality, :salary, :country_picture
  has_many :games 
  belongs_to :team

end
