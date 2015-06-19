# Este archivo sirve para crear registros de prueba
require 'faker'
User.create(name: "Mauricio Garcia", email: "mauricio@mail.com")
Task.create(user_id: 1, name: Faker::Lorem.sentence, status: "incomplete")
User.create(name: "Sandra Tirado", email: "sondi@mail.com")
Task.create(user_id: 2, name: Faker::Lorem.sentence, status: "incomplete")
User.create(name: "Santiago Bermudez", email: "santiago@mail.com")
Task.create(user_id: 3, name: Faker::Lorem.sentence, status: "incomplete")

for i in 0...12
	User.create(name: Faker::Name.first_name + " " + Faker::Name.last_name, email: Faker::Internet.email)
	Task.create(user_id: i + 3, name: Faker::Lorem.sentence, status: "incomplete")
end