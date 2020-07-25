class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :exercise_type, :sets, :reps, :workout, :start_time, :end_time
  belongs_to :workout

end
