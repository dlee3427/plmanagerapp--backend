class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name, :exercise_type, :sets, :reps, :workout, :duration

end
