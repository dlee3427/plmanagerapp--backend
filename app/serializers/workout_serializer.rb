class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :start_time, :end_time
  has_many :exercises
  has_many :players

end
