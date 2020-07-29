class WorkoutSerializer < ActiveModel::Serializer
  attributes :id, :name, :exercises, :start_time, :end_time, :players



end
