# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'Sarah', password_digest: 'password')
user2 = User.create(username: 'Oscar', password_digest: 'password')
user3 = User.create(username: 'Abby', password_digest: 'password')

user1.runs.create(date: '04/02/2022', distance: 4.97, total_time: '0:58:05', calories: 601, elevation: 195, average_heartrate: 167, average_pace: '00:11:40', fastest_split: '00:10:18')
user2.runs.create(date: '04/01/2022', distance: 1.50, total_time: '0:20:05', calories: 150, elevation: 5, average_heartrate: 140, average_pace: '00:20:40', fastest_split: '00:19:18')
user3.runs.create(date: '04/03/2022', distance: 3.10, total_time: '0:35:00', calories: 320, elevation: 30, average_heartrate: 160, average_pace: '00:15:40', fastest_split: '00:13:18')