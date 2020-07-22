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

Team.reset_pk_sequence
User.reset_pk_sequence
Team.reset_pk_sequence

w1 = Workout.create(name: "Cardio", start_time: "9:00AM", end_time: "10:00AM")

e1 = Exercise.create(name: "Ab Crunches", exercise_type: "Aerobic", sets: "3", reps: "5-8", workout: Workout.first, start_time: "10:00AM", end_time: "12:00PM")



t1 = Team.create(name: "Tottenham Hotspurs", stadium: "Tottenham Hotspur Stadium", stadium_picture: "https://i.guim.co.uk/img/media/0c43389417f433da9cde5604c38fc4e6f8940de2/0_79_4500_2700/master/4500.jpg?width=1200&height=900&quality=85&auto=format&fit=crop&s=4dcf3a135ebe664947e84289e93fa2c0", primary_color: "White", secondary_color: "Navy Blue", logo: "https://1000logos.net/wp-content/uploads/2018/06/tottenham-logo.jpg", team_budget: 155505210.00, wins: 13, draws: 11, losses: 7, goals: 51)
u1 = User.create(name: "Jose Mourinho", email: "mourinho@gmail.com", user_picture: "https://as01.epimg.net/en/imagenes/2019/08/10/football/1565432981_864376_1565433048_noticia_normal_recorte1.jpg", team: Team.first)  


p1 = Player.create(name: "Son Heung Min", player_picture: "https://resources.premierleague.com/premierleague/photo/2020/02/13/cedfccb8-124b-4205-bbf2-b7a04522bfdd/Son-Heung-min.jpg", position: "Left Wing", number: 7, salary: 6000000.00, playing_time: 90, nationality: "Republic of Korea", age: 28, appearances: 35, goals: 11, assists: 10, passes: 120, tackles: 6, coach_satisfied: true, team: Team.first, user: User.first )
p2 = Player.create(name: "Harry Kane", player_picture: "https://tot-tmp.azureedge.net/media/20208/firstteam_harrykane.png?anchor=center&mode=crop&width=750", position: "Striker", number: 10, salary: 1000000.00, playing_time: 90, nationality: "England", age: 26, appearances: 30, goals: 16, assists: 3, passes: 50, tackles: 3, coach_satisfied: true, team: Team.first, user: User.first)
p3 = Player.create(name: "Hugo Lloris", player_picture: "https://www.spurs-web.com/wp-content/uploads/2020/02/hugo-lloris.jpg", position: "Goalkeeper", number: 7, salary: 12000000.00, playing_time: 90, nationality: "France", age: 28, appearances: 35, goals: 11, assists: 10, passes: 120, tackles: 6, coach_satisfied: true, team: Team.first, user: User.first)
p4 = Player.create(name: "Giovani Lo Celso", player_picture: "https://i2-prod.birminghammail.co.uk/incoming/article18176746.ece/ALTERNATES/s1200b/0_Burnley-FC-v-Tottenham-Hotspur-Premier-League.jpg", position: "Midfielder", number: 1, salary: 3500000.00, playing_time: 90, nationality: "Argentina", age: 24, appearances: 30, goals: 3, assists: 5, passes: 68, tackles: 3, coach_satisfied: true, team: Team.first, user: User.first )

