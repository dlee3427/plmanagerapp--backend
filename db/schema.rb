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
    t.integer "duration"
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
    t.integer "appearances", default: 0
    t.integer "goals", default: 0
    t.integer "assists", default: 0
    t.integer "passes", default: 0
    t.integer "tackles", default: 0
    t.boolean "injured", default: false
    t.integer "team_id"
    t.integer "user_id"
    t.string "country_picture"
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
    t.integer "ticket_sales"
    t.integer "concession_sales"
    t.integer "sponsorship_value"
    t.integer "travel_expenses"
    t.integer "merchandising_costs"
    t.integer "marketing_expenses"
    t.integer "employee_expenses"
    t.integer "taxes"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "user_picture", default: "https://st3.depositphotos.com/4111759/13425/v/450/depositphotos_134255532-stock-illustration-profile-placeholder-male-default-profile.jpg"
    t.integer "team_id"
    t.string "password_digest"
    t.string "nationality", default: "United States"
    t.string "country_picture", default: "https://movietvtechgeeks.com/wp-content/uploads/2015/01/arsenal-premier-league-soccer-need-improvement-2015.jpg"
    t.integer "salary", default: 3000000
  end

  create_table "workouts", force: :cascade do |t|
    t.string "name"
    t.integer "player_id"
    t.datetime "start_time"
    t.datetime "end_time"
  end

end
