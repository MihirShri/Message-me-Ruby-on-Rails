# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Sujoy", password: "123")
User.create(username: "Satyam", password: "123")
User.create(username: "Prateek", password: "123")
User.create(username: "Sakru", password: "123")
User.create(username: "Katyayani", password: "123")

Message.create(body: "Hey new guy", user: User.find(6))
Message.create(body: "I'm chilling like it's saturday", user: User.find(4))
Message.create(body: "Hi I'm a new message", user: User.first)
