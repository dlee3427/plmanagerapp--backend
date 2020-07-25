class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :user_picture, :team, :password_digest
  has_many :games 
  belongs_to :team

end
