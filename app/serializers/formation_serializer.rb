class FormationSerializer < ActiveModel::Serializer
  attributes :id
  belongs_to :team
end
