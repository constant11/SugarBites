# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: "ed@nerubia.com", password: "1qaz", password_confirmation: "1qaz", 
					first_name: "Ed", middle_name: "Y", last_name: "chua", gender: "MALE", 
					status: "ACTIVE", type_of_user: "ADMIN")