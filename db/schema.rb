# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_22_133436) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "exercise_type"
    t.string "sets"
    t.string "reps"
    t.integer "workout_id"
    t.datetime "start_time"
    t.datetime "end_time"
  end

  create_table "formations", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
    t.integer "team_id"
  end

  create_table "games", force: :cascade do |t|
    t.string "location"
    t.integer "home_team_goals"
    t.integer "away_team_goals"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "player_id"
    t.integer "user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "team_id"
    t.integer "game_id"
  end

  create_table "player_workouts", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "player_picture"
    t.string "position"
    t.integer "number"
    t.float "salary"
    t.integer "playing_time"
    t.string "nationality"
    t.integer "age"
    t.integer "appearances"
    t.integer "goals"
    t.integer "assists"
    t.integer "passes"
    t.integer "tackles"
    t.boolean "coach_satisfied"
    t.integer "team_id"
    t.integer "user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "coach_picture"
    t.string "stadium"
    t.string "stadium_picture"
    t.string "primary_color"
    t.string "secondary_color"
    t.string "logo"
    t.float "team_budget"
    t.integer "wins"
    t.integer "draws"
    t.integer "losses"
    t.integer "goals"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "user_picture"
    t.integer "team_id"
    t.string "password_digest"
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "end_time"
  end

end
