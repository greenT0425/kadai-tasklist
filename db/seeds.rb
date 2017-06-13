# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..5).each do |number|
	User.create(name: 'Test user ' + number.to_s,email: 'test.email' + number.to_s + '@test.com',password: 'test'+ number.to_s)

	(1..100).each do |count|
		Task.create(status: 'Not yet',content: 'Test user ' + number.to_s + 'のタスク' + count.to_s, user_id: number.to_s)
	end
end

