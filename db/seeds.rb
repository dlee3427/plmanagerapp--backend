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
Match.destroy_all

Team.reset_pk_sequence
User.reset_pk_sequence
Workout.reset_pk_sequence 
Game.reset_pk_sequence 
Player.reset_pk_sequence
Exercise.reset_pk_sequence
PlayerWorkout.reset_pk_sequence
Match.reset_pk_sequence


# Team Seed 
liverpool = Team.create(name: "Liverpool FC", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 3230002050.00, wins: 33, draws: 3, losses: 3, goals: 85, ticket_sales: 200000000, concession_sales: 4000000, sponsorship_value: 15000420, travel_expenses: 2002090, merchandising_costs: 40004320, marketing_expenses:12400000, employee_expenses: 8045000, taxes: 12000000)
mancity = Team.create(name: "Manchester City Football Club", stadium: "Ethiad Stadium", stadium_picture: "", primary_color: "Sky Blue", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 3200204150.00, wins: 26, draws: 3, losses: 9, goals: 102, ticket_sales: 200000000, concession_sales: 4000000, sponsorship_value: 15000420, travel_expenses: 2002090, merchandising_costs: 40004320, marketing_expenses:12400000, employee_expenses: 8045000, taxes: 12000000 )
manu = Team.create(name: "Manchester United", stadium: "Old Trafford", stadium_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Manchester_United_Panorama_%288051523746%29.jpg/1200px-Manchester_United_Panorama_%288051523746%29.jpg", primary_color: "Red", secondary_color: "White", logo: "https://logos-world.net/wp-content/uploads/2020/06/Red-Devils-logo.png", team_budget: 5062122050.00, wins: 18, draws: 12, losses: 8, goals: 66)
chelsea = Team.create(name: "Chelsea Football Club", stadium: "Stamford Bridge", stadium_picture: "https://media-cdn.tripadvisor.com/media/photo-m/1280/16/7a/67/83/photo0jpg.jpg", primary_color: "Blue", secondary_color: "White", logo: "https://upload.wikimedia.org/wikipedia/en/thumb/c/cc/Chelsea_FC.svg/180px-Chelsea_FC.svg.png", team_budget: 555262050.00, wins: 20, draws: 6, losses: 12, goals: 69, ticket_sales: 20000000, concession_sales: 1200000, sponsorship_value: 22000000, travel_expenses: 520000, merchandising_costs: 1200000, marketing_expenses: 3120500, employee_expenses: 600000, taxes: 12000030)
leicester = Team.create(name: "Leicester City", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 18, draws: 8, losses: 12, goals: 67, ticket_sales: 200000000, concession_sales: 4000000, sponsorship_value: 15000420, travel_expenses: 2002090, merchandising_costs: 40004320, marketing_expenses:12400000, employee_expenses: 8045000, taxes: 12000000)
spurs = Team.create(name: "Tottenham Hotspurs", stadium: "Tottenham Hotspur Stadium", stadium_picture: "https://i.guim.co.uk/img/media/0c43389417f433da9cde5604c38fc4e6f8940de2/0_79_4500_2700/master/4500.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=4dcf3a135ebe664947e84289e93fa2c0", primary_color: "White", secondary_color: "Navy Blue", logo: "https://1000logos.net/wp-content/uploads/2018/06/tottenham-logo.jpg", team_budget: 15552505210.00, wins: 16, draws: 11, losses: 7, goals: 51, ticket_sales: 12400000, concession_sales: 3000000, sponsorship_value: 16000000, travel_expenses: 750000, merchandising_costs: 6000000 , marketing_expenses: 7210000, employee_expenses: 900000, taxes: 15040000 )
wolves = Team.create(name: "Wolverhampton Wanderers", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 15, draws: 14, losses: 9, goals: 51, ticket_sales: 200000000, concession_sales: 4000000, sponsorship_value: 15000420, travel_expenses: 2002090, merchandising_costs: 40004320, marketing_expenses:12400000, employee_expenses: 8045000, taxes: 12000000)
arsenal = Team.create(name: "Arsenal Football Club", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 14, draws: 14, losses: 10, goals: 56, ticket_sales: 200000000, concession_sales: 4000000, sponsorship_value: 15000420, travel_expenses: 2002090, merchandising_costs: 40004320, marketing_expenses:12400000, employee_expenses: 8045000, taxes: 12000000)
Team.create(name: "Sheffield United", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", wins: 14, draws: 12, losses: 12, goals: 39, team_budget: 555262050.00, ticket_sales: 20000000, concession_sales: 1200000, sponsorship_value: 22000000, travel_expenses: 520000, merchandising_costs: 1200000, marketing_expenses: 3120500, employee_expenses: 600000, taxes: 12000030)
Team.create(name: "Burnley", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 15, draws: 9, losses: 14, goals: 67,ticket_sales: 20000000, concession_sales: 1200000, sponsorship_value: 22000000, travel_expenses: 520000, merchandising_costs: 1200000, marketing_expenses: 3120500, employee_expenses: 600000, taxes: 12000030)
Team.create(name: "Southampton", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 15, draws: 7, losses: 16, goals: 51)
Team.create(name: "Everton", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 13, draws: 10, losses: 15, goals: 44)
Team.create(name: "Newcastle United", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 11, draws: 11, losses: 16, goals: 38)
Team.create(name: "Crystal Palace", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 11, draws: 10, losses: 17, goals: 31)
Team.create(name: "Brighton and Hove Albion", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 9, draws: 14, losses: 15, goals: 39)
Team.create(name: "West Ham United", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 10, draws: 9, losses: 19, goals: 49)
Team.create(name: "Aston Villa", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 9, draws: 8, losses: 21, goals: 41)
Team.create(name: "Bournemouth", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 9, draws: 7, losses: 22, goals: 40)
Team.create(name: "Watford", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 8, draws: 10, losses: 20, goals: 36)
Team.create(name: "Norwich City", stadium: "", stadium_picture: "", primary_color: "Red", secondary_color: "White", logo: "https://logodownload.org/wp-content/uploads/2017/02/Arsenal-logo-escudo-shield-1.png", team_budget: 32002050.00, wins: 5, draws: 6, losses: 27, goals: 26)



jose = User.create(name: "Jose Mourinho", nationality: "Portugal", salary: 4000000, country_picture: "https://www.worldatlas.com/r/w728/img/flag/pt-flag.jpg", email: "mourinho@gmail.com", user_picture: "https://as01.epimg.net/en/imagenes/2019/08/10/football/1565432981_864376_1565433048_noticia_normal_recorte1.jpg", team: spurs, password: "password") 
frank = User.create(name: "Frank Lampard", nationality: "England", salary: 1200000, country_picture: "https://upload.wikimedia.org/wikipedia/en/b/be/Flag_of_England.svg", email: "frank@gmail.com", user_picture: "https://cdn.images.express.co.uk/img/dynamic/67/590x/Frank-Lampard-1314923.jpg?r=1595851912679", team: chelsea, password: "password") 


# Spurs Seed 
son = Player.create(name: "Son Heung Min", player_picture: "https://resources.premierleague.com/premierleague/photo/2020/02/13/cedfccb8-124b-4205-bbf2-b7a04522bfdd/Son-Heung-min.jpg", country_picture: "https://winafestival.com/wp-content/uploads/2018/03/korea-clipart-korean-flag-3.png", position: "Left Wing", number: 7, salary: 6000000.00, playing_time: 90, nationality: "Republic of Korea", age: 28, appearances: 35, goals: 11, assists: 10, passes: 120, tackles: 6, injured: true, team: spurs, user: jose)
harry = Player.create(name: "Harry Kane", country_picture: "https://upload.wikimedia.org/wikipedia/en/b/be/Flag_of_England.svg", player_picture: "https://en.as.com/en/imagenes/2020/04/12/football/1586678237_139234_noticia_normal.jpg", position: "Striker", number: 10, salary: 1000000.00, playing_time: 90, nationality: "England", age: 26, appearances: 30, goals: 16, assists: 3, passes: 50, tackles: 3, injured: true, team: spurs, user: jose)
pulisic = Player.create(name: "Christian Pulisic", country_picture: "https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg",player_picture:"https://i0.wp.com/metro.co.uk/wp-content/uploads/2020/07/PRI_156342616-e1593671747257.jpg?quality=90&strip=all&zoom=1&resize=644%2C412&ssl=1", position: "Left Wing", number: 22, salary: 3400000.00, playing_time: 90, nationality: "United States", age: 20, appearances: 35, goals: 10, assists: 4, passes: 100, tackles: 22, injured: false, team: chelsea, user: frank)
lloris = Player.create(name: "Hugo Lloris", country_picture: "https://cdn.pixabay.com/photo/2013/07/12/17/17/france-151928__340.png",player_picture: "https://www.spurs-web.com/wp-content/uploads/2020/02/hugo-lloris.jpg", position: "Goalkeeper", number: 7, salary: 12000000.00, playing_time: 90, nationality: "France", age: 28, appearances: 35, goals: 11, assists: 10, passes: 120, tackles: 6, injured: false, team: spurs, user: jose)
Player.create(name: "Giovani Lo Celso", country_picture: "https://cdn.countryflags.com/thumbs/argentina/flag-400.png", player_picture: "https://i2-prod.birminghammail.co.uk/incoming/article18176746.ece/ALTERNATES/s1200b/0_Burnley-FC-v-Tottenham-Hotspur-Premier-League.jpg", position: "Midfielder", number: 1, salary: 3500000.00, playing_time: 90, nationality: "Argentina", age: 24, appearances: 30, goals: 3, assists: 5, passes: 68, tackles: 3, injured: true, team: spurs, user: jose)
Player.create(name: "Lucas Moura", country_picture: "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/720px-Flag_of_Brazil.svg.png", player_picture: "https://tmssl.akamaized.net/images/foto/normal/lucas-moura-von-tottenham-1557349598-22166.jpg", position: "Midfielder", number: 27, salary: 20000021.00, playing_time: 65, nationality: "Brazil", age: 27, appearances: 25, goals: 4, assists: 6, passes: 43, tackles: 12, injured: false, team: spurs, user: jose)
Player.create(name: "Serge Aurier", country_picture: "https://upload.wikimedia.org/wikipedia/commons/f/fe/Flag_of_C%C3%B4te_d%27Ivoire.svg", player_picture:"https://resources.premierleague.com/photos/2019/09/25/55906239-dd0e-403b-8450-fef918096196/Serge-Aurier.jpg?width=930&height=620", position: "Right Back", number: 24, salary: 3600000.00, playing_time: 90, nationality: "Ivory Coast", age: 27, appearances: 30, goals: 3, assists: 10, passes: 65, tackles: 20, injured: false, team: spurs, user: jose)
Player.create(name: "Dele Alli", country_picture: "https://upload.wikimedia.org/wikipedia/en/b/be/Flag_of_England.svg", player_picture:"https://resources.premierleague.com/premierleague/photo/2019/11/27/b2d99f03-bdf4-45bf-9112-a180dbd2a066/Dele-Alli.jpg", position: "Attacking Midfielder", number: 20, salary: 1520000.00, playing_time: 90, nationality: "England", age: 24, appearances: 35, goals: 7, assists: 10, passes: 100, tackles: 22, injured: false, team: spurs, user: jose)

# Chelsea Seed 

giroud = Player.create(name: "Olivier Giroud", country_picture: "https://cdn.pixabay.com/photo/2013/07/12/17/17/france-151928__340.png",player_picture:"https://www.getfootballnewsfrance.com/assets/fbl-euro-2020-qualifier-france-moldova-4-806x536.jpg", position: "Striker", number: 18, salary: 120000.00, playing_time: 90, nationality: "France", age: 29, appearances: 35, goals: 7, assists: 10, passes: 100, tackles: 22, injured: false, team: chelsea, user: frank)
mount = Player.create(name: "Mason Mount",country_picture: "https://upload.wikimedia.org/wikipedia/en/b/be/Flag_of_England.svg", player_picture:"https://tmssl.akamaized.net/images/foto/normal/mason-mount-vom-fc-chelsea-1589550217-38669.jpg", position: "Midfielder", number: 19, salary: 810000.00, playing_time: 90, nationality: "England", age: 22, appearances: 35, goals: 5, assists: 12, passes: 70, tackles: 22, injured: false, team: chelsea, user: frank)
rudiger = Player.create(name: "Antonio Rudiger",country_picture: "https://www.flagmakers.co.uk/wp-content/uploads/flags/country/Germany-National-Flag.jpg", player_picture:"https://resources.premierleague.com/photos/2019/03/26/f973640e-47a6-4a54-a864-9ebc2b6c13ea/Rudiger-Chelsea.jpg?width=932&height=620", position: "Center Back", number: 2, salary: 600000.00, playing_time: 90, nationality: "Germany", age: 26, appearances: 35, goals: 1, assists: 4, passes: 70, tackles: 55, injured: false, team: chelsea, user: frank)
kante = Player.create(name: "Ngolo Kante",country_picture: "https://cdn.pixabay.com/photo/2013/07/12/17/17/france-151928__340.png", player_picture:"https://img.bleacherreport.net/img/images/photos/003/809/951/hi-res-d46f06d287222dcb1cab83bdd7af6cc1_crop_north.jpg?h=533&w=800&q=70&crop_x=center&crop_y=top", position: "Midfielder", number: 7, salary: 538800.00, playing_time: 90, nationality: "France", age: 26, appearances: 377, goals: 8, assists: 14, passes: 70, tackles: 55, injured: false, team: chelsea, user: frank)
werner = Player.create(name: "Timo Werner",country_picture: "https://www.flagmakers.co.uk/wp-content/uploads/flags/country/Germany-National-Flag.jpg", player_picture:"https://e0.365dm.com/20/02/768x432/skysports-timo-werner-rb-leipzig_4919077.jpg?20200213153114", position: "Striker", number: 21, salary: 3008800.00, playing_time: 90, nationality: "Germany", age: 22, appearances: 0, goals: 0, assists: 0, passes: 0, tackles: 0, injured: false, team: chelsea, user: frank)
abraham = Player.create(name: "Tammy Abraham",country_picture: "https://upload.wikimedia.org/wikipedia/en/b/be/Flag_of_England.svg", player_picture:"https://miro.medium.com/proxy/1*4dIJI_u5Slpl6t21e6P2GQ.jpeg", position: "Forward", number: 9, salary: 3880000.00, playing_time: 90, nationality: "France", age: 22, appearances: 26, goals: 2, assists: 5, passes: 70, tackles: 15, injured: false, team: chelsea, user: frank)
kepa = Player.create(name: "Kepa Arrizabalaga",country_picture: "https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/750px-Flag_of_Spain.svg.png", player_picture:"https://i2-prod.football.london/incoming/article18525819.ece/ALTERNATES/s615/0_Kepa.jpg", position: "Goalkeeper", number: 1, salary: 400000.00, playing_time: 90, nationality: "Spain", age: 24, appearances: 32, goals: 0, assists: 0, passes: 0, tackles: 0, injured: false, team: chelsea, user: frank)
reece = Player.create(name: "Reece James",country_picture: "https://upload.wikimedia.org/wikipedia/en/b/be/Flag_of_England.svg", player_picture:"https://tmssl.akamaized.net/images/foto/normal/reece-james-chelsea-fc-1573732619-27434.jpg", position: "Defender", number: 24, salary: 4152900, playing_time: 90, nationality: "England", age: 23, appearances: 31, goals: 2, assists: 5, passes: 94, tackles: 55, injured: false, team: chelsea, user: frank)
willian = Player.create(name: "Willian",country_picture: "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/1024px-Flag_of_Brazil.svg.png", player_picture:"https://i2.wp.com/metro.co.uk/wp-content/uploads/2020/05/GettyImages-1210290021-b14f.jpg?quality=90&strip=all&zoom=1&resize=644%2C433&ssl=1", position: "Forward", number: 10, salary: 4288000, playing_time: 90, nationality: "Brazil", age: 28, appearances: 31, goals: 5, assists: 5, passes: 94, tackles: 55, injured: false, team: chelsea, user: frank)
kovacic = Player.create(name: "Mateo Kovacic",country_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Flag_of_Croatia.svg/1200px-Flag_of_Croatia.svg.png", player_picture:"https://resources.premierleague.com/premierleague/photo/2019/11/07/c6d9f864-425b-42bd-979d-8721acbb660f/Kovacic.jpg", position: "Midfielder", number: 17, salary: 2500000, playing_time: 80, nationality: "Croatia", age: 26, appearances: 30, goals: 5, assists: 5, passes: 94, tackles: 55, injured: false, team: chelsea, user: frank)


Workout.create(name: "Ab Workout", start_time: "9:00AM", end_time: "10:00AM")
Workout.create(name: "Morning Lift", start_time: "10:00AM", end_time: "12:00PM")
Workout.create(name: "Afternoon Lift", start_time: "5:00PM", end_time: "7:00PM")
Workout.create(name: "Cardio", start_time: "7:00AM", end_time: "8:30AM")
morningRun = Workout.create(name: "Morning Run", start_time: "5:00AM", end_time: "7:00AM")
afternoonRun = Workout.create(name: "Afternoon Run", start_time: "12:00PM", end_time: "2:00PM")
eveningRun = Workout.create(name: "Evening Run", start_time: "5:00PM", end_time: "7:00PM")

Exercise.create(name: "Ab Crunches", exercise_type: "Core", sets: "3", reps: "5-8", workout: Workout.first, duration: 65)
Exercise.create(name: "Bicycle Kicks", exercise_type: "Core", sets: "3", reps: "10-12", workout: Workout.first, duration: 90)
Exercise.create(name: "Ab Planks", exercise_type: "Core", sets: "3", reps: "3-5", workout: Workout.first, duration: 45)
Exercise.create(name: "Deadlifts", exercise_type: "Full Body", sets: "3", reps: "8-12", workout: Workout.second, duration: 30)
Exercise.create(name: "Sprint", exercise_type: "Legs", sets:"5", reps: "10-12", workout: morningRun, duration: 30)
Exercise.create(name: "Jog", exercise_type: "Legs", sets:"5", reps: "10-12", workout: eveningRun, duration: 30)
Exercise.create(name: "Recovery Walk", exercise_type: "Legs", sets:"5", reps: "10-12", workout: morningRun, duration: 30)
Exercise.create(name: "100 X 4 Sprint", exercise_type: "Legs", sets:"5", reps: "10-12", workout: eveningRun, duration: 30)
Exercise.create(name: "1 Mile run", exercise_type: "Legs", sets:"1", reps: "1", workout: afternoonRun, duration: 30)

Game.create(location: "Stamford Bridge", home_team_goals: 4, away_team_goals: 2, start_time: "7:00PM", end_time: "9:00PM", user: frank, player: pulisic)
Game.create(location: "Old Trafford", home_team_goals: 2, away_team_goals: 3, start_time: "6:00PM", end_time: "8:00PM", user: jose, player: son)
Game.create(location: "Stamford Bridge", home_team_goals: 3, away_team_goals: 1, start_time: "6:00PM", end_time: "8:00PM", user: frank, player: pulisic)
Game.create(location: "Stamford Bridge", home_team_goals: 3, away_team_goals: 1, start_time: "6:00PM", end_time: "8:00PM", user: frank, player: pulisic)
Game.create(location: "Tottenham Hotspur Stadium", home_team_goals: 2, away_team_goals: 4, start_time: "5:00PM", end_time: "7:00PM", user: jose, player: son ) 
g6 = Game.create(location: "Stamford Bridge", home_team_goals: 2, away_team_goals: 1, start_time: "1:00PM", end_time: "3:00PM", user: frank, player: pulisic)
g7 = Game.create(location: "Stamford Bridge", home_team_goals: 3, away_team_goals: 5, start_time: "5:00PM", end_time: "7:00PM", user: frank, player: pulisic)


# Creates first Match between two teams 
Match.create(team: spurs, game: Game.first)
Match.create(team: chelsea, game: Game.first)

# Creates second match between two teams 
Match.create(team: Team.third, game: Game.second)
Match.create(team: spurs, game: Game.second)

Match.create(team: chelsea, game: Game.third)
Match.create(team: Team.second, game: Game.third)

Match.create(team: chelsea, game: Game.fourth)
Match.create(team: Team.last, game: Game.fourth)

Match.create(team: Team.third, game: Game.fifth)
Match.create(team: spurs, game: Game.fifth)

Match.create(team: chelsea, game: g6)
Match.create(team: arsenal, game: g6)

Match.create(team: chelsea, game: g7)
Match.create(team: wolves, game: g7)



PlayerWorkout.create(player: Player.first, workout: Workout.first)
PlayerWorkout.create(player: Player.last, workout: Workout.second)
PlayerWorkout.create(player: Player.first, workout: Workout.last)
PlayerWorkout.create(player: Player.first, workout: Workout.second)
PlayerWorkout.create(player: Player.first, workout: Workout.third)
PlayerWorkout.create(player: Player.first, workout: Workout.fourth)

PlayerWorkout.create(player: Player.second, workout: Workout.second)
PlayerWorkout.create(player: werner, workout: Workout.fifth)
PlayerWorkout.create(player: pulisic, workout: Workout.fourth)
PlayerWorkout.create(player: Player.second, workout: Workout.second)
PlayerWorkout.create(player: pulisic, workout: Workout.first)
PlayerWorkout.create(player: pulisic, workout: Workout.second)
PlayerWorkout.create(player: pulisic, workout: Workout.third)


PlayerWorkout.create(player: giroud, workout: Workout.first)
PlayerWorkout.create(player: giroud, workout: Workout.second)
PlayerWorkout.create(player: giroud, workout: Workout.third)
PlayerWorkout.create(player: kante, workout: Workout.second)
PlayerWorkout.create(player: kante, workout: Workout.first)
PlayerWorkout.create(player: werner, workout: Workout.last)
PlayerWorkout.create(player: werner, workout: Workout.first)
PlayerWorkout.create(player: werner, workout: Workout.second)

PlayerWorkout.create(player: abraham, workout: Workout.last)
PlayerWorkout.create(player: abraham, workout: Workout.first)
PlayerWorkout.create(player: abraham, workout: Workout.second)


PlayerWorkout.create(player: mount, workout: Workout.fourth)
PlayerWorkout.create(player: mount, workout: Workout.first)
PlayerWorkout.create(player: mount, workout: Workout.second)
PlayerWorkout.create(player: mount, workout: Workout.third)
PlayerWorkout.create(player: kante, workout: Workout.second)
PlayerWorkout.create(player: kante, workout: Workout.first)
PlayerWorkout.create(player: reece, workout: Workout.last)
PlayerWorkout.create(player: reece, workout: Workout.first)
PlayerWorkout.create(player: reece, workout: Workout.second)

PlayerWorkout.create(player: rudiger, workout: Workout.last)
PlayerWorkout.create(player: rudiger, workout: Workout.first)
PlayerWorkout.create(player: rudiger, workout: Workout.second)


PlayerWorkout.create(player: willian, workout: Workout.last)
PlayerWorkout.create(player: willian, workout: Workout.first)
PlayerWorkout.create(player: willian, workout: Workout.second)

PlayerWorkout.create(player: kovacic, workout: Workout.last)
PlayerWorkout.create(player: kovacic, workout: Workout.first)
PlayerWorkout.create(player: kovacic, workout: Workout.second)