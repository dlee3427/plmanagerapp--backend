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
Team.create(name: "Chelsea Football Club", stadium: "Stamford Bridge", stadium_picture: "https://media-cdn.tripadvisor.com/media/photo-m/1280/16/7a/67/83/photo0jpg.jpg", primary_color: "Blue", secondary_color: "White", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/180px-Chelsea_FC.svg.png", team_budget: 556262050.00, wins: 19, draws: 6, losses: 12, goals: 67)
Team.create(name: "Manchester United", stadium: "Old Trafford", stadium_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Manchester_United_Panorama_%288051523746%29.jpg/1200px-Manchester_United_Panorama_%288051523746%29.jpg", primary_color: "Red", secondary_color: "White", logo: "https://logos-world.net/wp-content/uploads/2020/06/Red-Devils-logo.png", team_budget: 506212050.00, wins: 20, draws: 10, losses: 8, goals: 67)
Team.create(name: "Arsenal Football Club", stadium: "Emirates Stadium", stadium_picture: "https://wallpaperaccess.com/full/1397960.jpg", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 20, draws: 10, losses: 8, goals: 67)

User.create(name: "Jose Mourinho", email: "mourinho@gmail.com", user_picture: "https://as01.epimg.net/en/imagenes/2019/08/10/football/1565432981_864376_1565433048_noticia_normal_recorte1.jpg", team: Team.first, password: "password")  


Player.create(name: "Son Heung Min", player_picture: "https://resources.premierleague.com/premierleague/photo/2020/02/13/cedfccb8-124b-4205-bbf2-b7a04522bfdd/Son-Heung-min.jpg", country_picture: "https://winafestival.com/wp-content/uploads/2018/03/korea-clipart-korean-flag-3.png", position: "Left Wing", number: 7, salary: 6000000.00, playing_time: 90, nationality: "Republic of Korea", age: 28, appearances: 35, goals: 11, assists: 10, passes: 120, tackles: 6, injured: true, team: Team.first, user: User.first )
Player.create(name: "Harry Kane", country_picture: "https://upload.wikimedia.org/wikipedia/en/b/be/Flag_of_England.svg", player_picture: "https://tot-tmp.azureedge.net/media/20208/firstteam_harrykane.png?anchor=center&mode=crop&width=750", position: "Striker", number: 10, salary: 1000000.00, playing_time: 90, nationality: "England", age: 26, appearances: 30, goals: 16, assists: 3, passes: 50, tackles: 3, injured: true, team: Team.first, user: User.first)
Player.create(name: "Hugo Lloris", country_picture: "https://cdn.pixabay.com/photo/2013/07/12/17/17/france-151928__340.png",player_picture: "https://www.spurs-web.com/wp-content/uploads/2020/02/hugo-lloris.jpg", position: "Goalkeeper", number: 7, salary: 12000000.00, playing_time: 90, nationality: "France", age: 28, appearances: 35, goals: 11, assists: 10, passes: 120, tackles: 6, injured: false, team: Team.first, user: User.first)
Player.create(name: "Giovani Lo Celso", country_picture: "https://cdn.countryflags.com/thumbs/argentina/flag-400.png", player_picture: "https://i2-prod.birminghammail.co.uk/incoming/article18176746.ece/ALTERNATES/s1200b/0_Burnley-FC-v-Tottenham-Hotspur-Premier-League.jpg", position: "Midfielder", number: 1, salary: 3500000.00, playing_time: 90, nationality: "Argentina", age: 24, appearances: 30, goals: 3, assists: 5, passes: 68, tackles: 3, injured: true, team: Team.first, user: User.first )
Player.create(name: "Lucas Moura", country_picture: "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/720px-Flag_of_Brazil.svg.png", player_picture: "https://tmssl.akamaized.net/images/foto/normal/lucas-moura-von-tottenham-1557349598-22166.jpg", position: "Midfielder", number: 27, salary: 20000021.00, playing_time: 65, nationality: "Brazil", age: 27, appearances: 25, goals: 4, assists: 6, passes: 43, tackles: 12, injured: false, team: Team.first, user: User.first)
Player.create(name: "Serge Aurier", country_picture: "https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_C%C3%B4te_d%27Ivoire.svg", player_picture:"https://resources.premierleague.com/photos/2019/09/25/55906239-dd0e-403b-8450-fef918096196/Serge-Aurier.jpg?width=930&height=620", position: "Right Back", number: 24, salary: 3600000.00, playing_time: 90, nationality: "Ivory Coast", age: 27, appearances: 30, goals: 3, assists: 10, passes: 65, tackles: 20, injured: false, team: Team.first, user: User.first)
Player.create(name: "Dele Alli", country_picture: "https://upload.wikimedia.org/wikipedia/en/b/be/Flag_of_England.svg", player_picture:"https://resources.premierleague.com/premierleague/photo/2019/11/27/b2d99f03-bdf4-45bf-9112-a180dbd2a066/Dele-Alli.jpg", position: "Attacking Midfielder", number: 20, salary: 1520000.00, playing_time: 90, nationality: "England", age: 24, appearances: 35, goals: 7, assists: 10, passes: 100, tackles: 22, injured: false, team: Team.first, user: User.first)

# Chelsea Seed 
Player.create(name: "Christian Pulisic", country_picture: "https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg",player_picture:"https://i0.wp.com/metro.co.uk/wp-content/uploads/2020/07/PRI_156342616-e1593671747257.jpg?quality=90&strip=all&zoom=1&resize=644%2C412&ssl=1", position: "Left Wing", number: 7, salary: 3400000.00, playing_time: 90, nationality: "United States", age: 20, appearances: 35, goals: 10, assists: 4, passes: 100, tackles: 22, injured: false, team: Team.second, user: User.last)
Player.create(name: "Olivier Giroud", country_picture: "https://cdn.pixabay.com/photo/2013/07/12/17/17/france-151928__340.png",player_picture:"https://www.getfootballnewsfrance.com/assets/fbl-euro-2020-qualifier-france-moldova-4-806x536.jpg", position: "Striker", number: 1, salary: 1520000.00, playing_time: 90, nationality: "France", age: 29, appearances: 35, goals: 7, assists: 10, passes: 100, tackles: 22, injured: false, team: Team.second, user: User.last)
Player.create(name: "Mason Mount",country_picture: "https://upload.wikimedia.org/wikipedia/en/b/be/Flag_of_England.svg", player_picture:"https://tmssl.akamaized.net/images/foto/normal/mason-mount-vom-fc-chelsea-1589550217-38669.jpg", position: "Midfielder", number: 5, salary: 8510000.00, playing_time: 90, nationality: "England", age: 22, appearances: 35, goals: 5, assists: 12, passes: 70, tackles: 22, injured: false, team: Team.second, user: User.last)
Player.create(name: "Antonio Rudiger",country_picture: "https://www.flagmakers.co.uk/wp-content/uploads/flags/country/Germany-National-Flag.jpg", player_picture:"https://resources.premierleague.com/photos/2019/03/26/f973640e-47a6-4a54-a864-9ebc2b6c13ea/Rudiger-Chelsea.jpg?width=932&height=620", position: "Center Back", number: 3, salary: 600000.00, playing_time: 90, nationality: "Germany", age: 26, appearances: 35, goals: 1, assists: 4, passes: 70, tackles: 55, injured: false, team: Team.second, user: User.last)
Player.create(name: "Ngolo Kante",country_picture: "https://cdn.pixabay.com/photo/2013/07/12/17/17/france-151928__340.png", player_picture:"https://img.bleacherreport.net/img/images/photos/003/809/951/hi-res-d46f06d287222dcb1cab83bdd7af6cc1_crop_north.jpg?h=533&w=800&q=70&crop_x=center&crop_y=top", position: "Midfielder", number: 7, salary: 53880000.00, playing_time: 90, nationality: "France", age: 26, appearances: 377, goals: 8, assists: 14, passes: 70, tackles: 55, injured: false, team: Team.second, user: User.last)








Workout.create(name: "Ab Workout", start_time: "9:00AM", end_time: "10:00AM")
Workout.create(name: "Morning Lift", start_time: "10:00AM", end_time: "12:00PM")
Workout.create(name: "Afternoon Lift", start_time: "5:00PM", end_time: "7:00PM")
Workout.create(name: "Cardio", start_time: "7:00AM", end_time: "8:30AM")

Exercise.create(name: "Ab Crunches", exercise_type: "Core", sets: "3", reps: "5-8", workout: Workout.first, duration: 65)
Exercise.create(name: "Bicycle Kicks", exercise_type: "Core", sets: "3", reps: "10-12", workout: Workout.first, duration: 90)
Exercise.create(name: "Ab Planks", exercise_type: "Core", sets: "3", reps: "3-5", workout: Workout.first, duration: 45)
Exercise.create(name: "Deadlifts", exercise_type: "Full Body", sets: "3", reps: "8-12", workout: Workout.second, duration: 30)
Exercise.create(name: "Squats", exercise_type: "Legs", sets:"5", reps: "10-12", workout: Workout.second, duration: 30)

Game.create(location: "Tottenham Hotspur Stadium", home_team_goals: 4, away_team_goals: 2, start_time: "7:00PM", end_time: "9:00PM")
Game.create(location: "Old Trafford", home_team_goals: 2, away_team_goals: 3, start_time: "6:00PM", end_time: "8:00PM" )
Game.create(location: "Tottenham Hotspur Stadium", home_team_goals: 3, away_team_goals: 1, start_time: "6:00PM", end_time: "8:00PM")

# Creates first Match between two teams 
Match.create(team: Team.first, game: Game.first)
Match.create(team: Team.second, game: Game.first)

# Creates second match between two teams 
Match.create(team: Team.third, game: Game.second)
Match.create(team: Team.last, game: Game.second)

Match.create(team: Team.last, game: Game.third)
Match.create(team: Team.first, game: Game.third)



PlayerWorkout.create(player: Player.first, workout: Workout.first)
PlayerWorkout.create(player: Player.last, workout: Workout.last)
PlayerWorkout.create(player: Player.first, workout: Workout.last)
