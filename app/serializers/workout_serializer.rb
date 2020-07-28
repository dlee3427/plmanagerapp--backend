class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :exercises, :players, :start_time, :end_time
  has_many :exercises


end
