class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_picture, :team, :password_digest
end
