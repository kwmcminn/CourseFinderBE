# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: "Kevin")
#
# Round.create(user_id: 1, course_id: 2169)
# Round.create(user_id: 1, course_id: 2168)
# Round.create(user_id: 1, course_id: 104738)
# Round.create(user_id: 1, course_id: 2758)
# Round.create(user_id: 1, course_id: 105680)
# Round.create(user_id: 1, course_id: 236391)
# Round.create(user_id: 1, course_id: 2773)
# Round.create(user_id: 1, course_id: 2166)
# Round.create(user_id: 1, course_id: 76017)
# Round.create(user_id: 1, course_id: 220176)

(1..18).each do |x|
   Hole.create(hole_number: x, total: rand(2..5), round_id: 1)
end
