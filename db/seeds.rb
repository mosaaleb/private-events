# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Event.delete_all

# User creation
User.create!([
  {email: "donald@duck.com", password: "123456", name: "Donald Duck"},
  {email: "bugs@bunny.com", password: "123456", name: "Bugs Bunny"},
  {email: "micky@mouse.com", password: "123456", name: "Micky Mouse"},
])

puts 'created user successfully'

# Event Creation
User.find_by(name: 'Donald Duck').events.create!([
  {date: Date.new(2020,2,3) , address:'Address 11 ', name: "Event 11", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},
  {date: Date.new(2017,2,3)  ,address:'Address 12 ', name: "Event 12", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."}
])

puts 'created first user events'

# Event Creation
User.find_by(name: 'Bugs Bunny').events.create!([
  {date: Date.new(2023,2,3)  ,address:'Address 9 ', name: "Event 9", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},
  {date: Date.new(2005,2,3)  ,address:'Address 10 ', name: "Event 10", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."}
])

# Event Creation
User.find_by(name: 'Micky Mouse').events.create!([
  {date: Date.new(2001,2,3)  ,address:'Address 1  ', name: "Event 1", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},
  {date: Date.new(2022,2,3)  ,address:'Address 2  ', name: "Event 2", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},
  {date: Date.new(2022,7,3)  ,address:'Address 3  ', name: "Event 3", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},
  {date: Date.new(2022,7,3)  ,address:'Address 4  ', name: "Event 4", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},
  {date: Date.new(2022,7,3)  ,address:'Address 5  ', name: "Event 5", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},
  {date: Date.new(2022,7,3)  ,address:'Address 6 ', name: "Event 6", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},
  {date: Date.new(2022,7,3)  ,address:'Address 7 ', name: "Event 7", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},
  {date: Date.new(2022,7,3)  ,address:'Address 8 ', name: "Event 8", description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s."},

])

puts 'created events successfully'

# Event Attendes
Event.first.attendees << User.find_by(name: 'Bugs Bunny')
Event.first.attendees << User.find_by(name: 'Donald Duck')
Event.first.attendees << User.find_by(name: 'Micky Mouse')

puts 'created attendees'

Event.last.attendees << User.find_by(name: 'Bugs Bunny')
Event.last.attendees << User.find_by(name: 'Donald Duck')
Event.last.attendees << User.find_by(name: 'Micky Mouse')

puts 'created attendees successfully'