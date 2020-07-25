# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all 
Game.destroy_all 
Team.destroy_all
Workout.destroy_all
Exercise.destroy_all
User.destroy_all
PlayerWorkout.destroy_all

Team.reset_pk_sequence
User.reset_pk_sequence
Workout.reset_pk_sequence 
Game.reset_pk_sequence 
Player.reset_pk_sequence
Exercise.reset_pk_sequence
PlayerWorkout.reset_pk_sequence


Team.create(name: "Tottenham Hotspurs", stadium: "Tottenham Hotspur Stadium", stadium_picture: "https://i.guim.co.uk/img/media/0c43389417f433da9cde5604c38fc4e6f8940de2/0_79_4500_2700/master/4500.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=4dcf3a135ebe664947e84289e93fa2c0", primary_color: "White", secondary_color: "Navy Blue", logo: "https://1000logos.net/wp-content/uploads/2018/06/tottenham-logo.jpg", team_budget: 155505210.00, wins: 13, draws: 11, losses: 7, goals: 51)
Team.create(name: "Chelsea Football Club", stadium: "Stamford Bridge", stadium_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Stamford_Bridge_-_West_Stand.jpg/250px-Stamford_Bridge_-_West_Stand.jpg", primary_color: "Blue", secondary_color: "White", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/180px-Chelsea_FC.svg.png", team_budget: 556262050.00, wins: 19, draws: 6, losses: 12, goals: 67)
Team.create(name: "Manchester United", stadium: "", stadium_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7c/Stamford_Bridge_-_West_Stand.jpg/250px-Stamford_Bridge_-_West_Stand.jpg", primary_color: "Blue", secondary_color: "White", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/180px-Chelsea_FC.svg.png", team_budget: 556262050.00, wins: 19, draws: 6, losses: 12, goals: 67)


User.create(name: "Jose Mourinho", email: "mourinho@gmail.com", user_picture: "https://as01.epimg.net/en/imagenes/2019/08/10/football/1565432981_864376_1565433048_noticia_normal_recorte1.jpg", team: Team.first, password: "password")  


Player.create(name: "Son Heung Min", player_picture: "https://resources.premierleague.com/premierleague/photo/2020/02/13/cedfccb8-124b-4205-bbf2-b7a04522bfdd/Son-Heung-min.jpg", position: "Left Wing", number: 7, salary: 6000000.00, playing_time: 90, nationality: "Republic of Korea", age: 28, appearances: 35, goals: 11, assists: 10, passes: 120, tackles: 6, coach_satisfied: true, team: Team.first, user: User.first )
Player.create(name: "Harry Kane", player_picture: "https://tot-tmp.azureedge.net/media/20208/firstteam_harrykane.png?anchor=center&mode=crop&width=750", position: "Striker", number: 10, salary: 1000000.00, playing_time: 90, nationality: "England", age: 26, appearances: 30, goals: 16, assists: 3, passes: 50, tackles: 3, coach_satisfied: true, team: Team.first, user: User.first)
Player.create(name: "Hugo Lloris", player_picture: "https://www.spurs-web.com/wp-content/uploads/2020/02/hugo-lloris.jpg", position: "Goalkeeper", number: 7, salary: 12000000.00, playing_time: 90, nationality: "France", age: 28, appearances: 35, goals: 11, assists: 10, passes: 120, tackles: 6, coach_satisfied: true, team: Team.first, user: User.first)
Player.create(name: "Giovani Lo Celso", player_picture: "https://i2-prod.birminghammail.co.uk/incoming/article18176746.ece/ALTERNATES/s1200b/0_Burnley-FC-v-Tottenham-Hotspur-Premier-League.jpg", position: "Midfielder", number: 1, salary: 3500000.00, playing_time: 90, nationality: "Argentina", age: 24, appearances: 30, goals: 3, assists: 5, passes: 68, tackles: 3, coach_satisfied: true, team: Team.first, user: User.first )
Player.create(name: "Lucas Moura", player_picture: "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.premierleague.com%2Fnews%2F1222605&psig=AOvVaw0myjiUYytOR2FUVlU4U3a4&ust=1595601401109000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCPDzycvM4-oCFQAAAAAdAAAAABAP", position: "Midfielder", number: 27, salary: 20000021.00, playing_time: 65, nationality: "Brazil", age: 27, appearances: 25, goals: 4, assists: 6, passes: 43, tackles: 12, coach_satisfied: false, team: Team.first, user: User.first)
Player.create(name: "Serge Aurier", player_picture:"https://resources.premierleague.com/photos/2019/09/25/55906239-dd0e-403b-8450-fef918096196/Serge-Aurier.jpg?width=930&height=620", position: "Right Back", number: 24, salary: 3600000.00, playing_time: 90, nationality: "Ivory Coast", age: 27, appearances: 30, goals: 3, assists: 10, passes: 65, tackles: 20, coach_satisfied: true, team: Team.first, user: User.first)

Workout.create(name: "Ab Workout", start_time: "9:00AM", end_time: "10:00AM")
Workout.create(name: "Morning Lift", start_time: "10:00AM", end_time: "12:00PM")
Workout.create(name: "Afternoon Lift", start_time: "5:00PM", end_time: "7:00PM")
Workout.create(name: "Cardio", start_time: "7:00AM", end_time: "8:30AM")

PlayerWorkout.create(player: Player.first, workout: Workout.first)
PlayerWorkout.create(player: Player.last, workout: Workout.last)
PlayerWorkout.create(player: Player.first, workout: Workout.last)

Exercise.create(name: "Ab Crunches", exercise_type: "Core", sets: "3", reps: "5-8")
Exercise.create(name: "Bicycle Kicks", exercise_type: "Core", sets: "3", reps: "10-12")
Exercise.create(name: "Ab Planks", exercise_type: "Core", sets: "3", reps: "3-5")
Exercise.create(name: "Deadlifts", exercise_type: "Full Body", sets: "3", reps: "8-12")
Exercise.create(name: "Squats", exercise_type: "Legs", sets:"5", reps: "10-12")


Game.create()