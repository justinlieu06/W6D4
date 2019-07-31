# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { anme: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
  User.create(name: 'bob', email: 'bob@gmail.com')
  User.create(name: 'mike', email: 'mike@duckduckgo.com')
  User.create(name: 'coolboi420', email: 'nice.com')
  User.create(name: 'therealcoolboi420', email: 'thereleast@gmail.com')
  User.create(name: 'asdfsdsfsadf', email: 'sggfdgagafs@gmail.com')
  
end
